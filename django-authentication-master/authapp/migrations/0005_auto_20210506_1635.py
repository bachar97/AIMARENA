# Generated by Django 3.1.6 on 2021-05-06 16:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('authapp', '0004_kickedfromwebsite_kicked_by'),
    ]

    operations = [
        migrations.AddField(
            model_name='admin_actions',
            name='create_appeal',
            field=models.BooleanField(default=0),
        ),
        migrations.AddField(
            model_name='userreg',
            name='is_active',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='userreg',
            name='password',
            field=models.CharField(max_length=250),
        ),
    ]