# Generated by Django 3.0.5 on 2021-04-19 22:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('nonmotiongame', '0002_auto_20210419_2230'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user_info',
            name='Accuracy_Avg',
            field=models.DecimalField(decimal_places=3, max_digits=5),
        ),
        migrations.AlterField(
            model_name='user_info',
            name='Score_Avg',
            field=models.DecimalField(decimal_places=3, max_digits=5),
        ),
    ]