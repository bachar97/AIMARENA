# Generated by Django 3.0.5 on 2021-04-19 14:59

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('authapp', '0003_auto_20210419_1453'),
    ]

    operations = [
        migrations.AddField(
            model_name='kickedfromwebsite',
            name='kicked_by',
            field=models.ForeignKey(default=2, on_delete=django.db.models.deletion.CASCADE, related_name='userkick', to='authapp.Userreg'),
            preserve_default=False,
        ),
    ]
