# Generated by Django 3.0.5 on 2021-04-17 14:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('forum', '0027_auto_20210417_1436'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='thumbnail',
            field=models.ImageField(blank=True, upload_to=''),
        ),
    ]
