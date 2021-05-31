# Generated by Django 3.0.5 on 2021-04-16 11:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('forum', '0018_auto_20210416_1136'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='topic',
            name='accepted_visible',
        ),
        migrations.RemoveField(
            model_name='topic',
            name='acceptedappeal_visible',
        ),
        migrations.RemoveField(
            model_name='topic',
            name='is_visible',
        ),
        migrations.RemoveField(
            model_name='topic',
            name='pinned_visible',
        ),
        migrations.RemoveField(
            model_name='topic',
            name='rejected_visible',
        ),
        migrations.RemoveField(
            model_name='topic',
            name='rejectedappeal_visible',
        ),
        migrations.AddField(
            model_name='subtopic',
            name='accepted_visible',
            field=models.BooleanField(default=False),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='subtopic',
            name='acceptedappeal_visible',
            field=models.BooleanField(default=False),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='subtopic',
            name='is_visible',
            field=models.BooleanField(default=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='subtopic',
            name='pinned_visible',
            field=models.BooleanField(default=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='subtopic',
            name='rejected_visible',
            field=models.BooleanField(default=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='subtopic',
            name='rejectedappeal_visible',
            field=models.BooleanField(default=True),
            preserve_default=False,
        ),
    ]