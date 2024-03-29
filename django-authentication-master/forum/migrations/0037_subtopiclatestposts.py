# Generated by Django 3.0.5 on 2021-04-22 10:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('authapp', '0004_kickedfromwebsite_kicked_by'),
        ('forum', '0036_auto_20210420_2258'),
    ]

    operations = [
        migrations.CreateModel(
            name='subtopiclatestposts',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('is_read', models.BooleanField()),
                ('subtopicnew', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='subtopiclatest', to='forum.subtopic')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='user_latest', to='authapp.Userreg')),
            ],
        ),
    ]
