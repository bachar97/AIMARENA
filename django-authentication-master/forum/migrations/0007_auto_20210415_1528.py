# Generated by Django 3.0.5 on 2021-04-15 15:28

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('forum', '0006_auto_20210415_1441'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subtopic',
            name='topic',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='topic_subtopic', to='forum.topic'),
        ),
    ]