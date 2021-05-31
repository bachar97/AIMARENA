# Generated by Django 3.0.5 on 2021-04-24 15:50

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('authapp', '0004_kickedfromwebsite_kicked_by'),
        ('nonmotiongame', '0018_products_is_deleted'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='user_info',
            name='Rank',
        ),
        migrations.CreateModel(
            name='GameMode_User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Score_Avg', models.FloatField()),
                ('Accuracy_Avg', models.FloatField()),
                ('Hits_Avg', models.FloatField()),
                ('Shots_Avg', models.FloatField()),
                ('Game_Mode_ID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='Game_Mode_user', to='nonmotiongame.Game_Mode')),
                ('Rank', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='rankuser', to='nonmotiongame.Rank')),
                ('User_ID', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='User_Mode_user', to='authapp.Userreg')),
            ],
        ),
    ]