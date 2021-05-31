# Generated by Django 3.0.5 on 2021-04-08 07:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('authapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Room',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Chat',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('chat', models.CharField(max_length=5000)),
                ('date_created', models.DateTimeField(auto_now_add=True)),
                ('roomid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='RoomId', to='chat.Room')),
                ('uid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='Userid', to='authapp.Userreg')),
            ],
            options={
                'ordering': ('date_created',),
            },
        ),
    ]
