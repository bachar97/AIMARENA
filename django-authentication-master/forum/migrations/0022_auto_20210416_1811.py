# Generated by Django 3.0.5 on 2021-04-16 18:11

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('forum', '0021_auto_20210416_1506'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='body',
            field=ckeditor.fields.RichTextField(blank=True),
        ),
    ]