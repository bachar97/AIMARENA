# Generated by Django 3.0.5 on 2021-04-19 22:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('nonmotiongame', '0004_auto_20210419_2237'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user_info',
            name='Accuracy_Avg',
            field=models.FloatField(),
        ),
        migrations.AlterField(
            model_name='user_info',
            name='Score_Avg',
            field=models.FloatField(),
        ),
    ]