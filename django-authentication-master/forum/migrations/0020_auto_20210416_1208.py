# Generated by Django 3.0.5 on 2021-04-16 12:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('forum', '0019_auto_20210416_1137'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='appeal_accepted',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='post',
            name='appeal_rejected',
            field=models.BooleanField(default=False),
        ),
    ]