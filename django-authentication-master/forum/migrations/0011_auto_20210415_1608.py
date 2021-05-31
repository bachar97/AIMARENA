# Generated by Django 3.0.5 on 2021-04-15 16:08

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('forum', '0010_remove_topic_slug'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='topic_title',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='subtopic_title_post', to='forum.subtopic'),
        ),
    ]