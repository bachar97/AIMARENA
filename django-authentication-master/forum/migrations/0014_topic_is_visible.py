# Generated by Django 3.0.5 on 2021-04-15 17:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('forum', '0013_auto_20210415_1622'),
    ]

    operations = [
        migrations.AddField(
            model_name='topic',
            name='is_visible',
            field=models.BooleanField(default=True),
            preserve_default=False,
        ),
    ]