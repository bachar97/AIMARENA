# Generated by Django 3.0.5 on 2021-04-15 15:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('forum', '0007_auto_20210415_1528'),
    ]

    operations = [
        migrations.AddField(
            model_name='subtopic',
            name='slug',
            field=models.SlugField(allow_unicode=True, blank=True, null=True, unique=True, verbose_name='Slug'),
        ),
    ]
