# Generated by Django 3.0.5 on 2021-04-08 07:09

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('sessions', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Pages',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('permission_name', models.CharField(max_length=100, null=True)),
                ('permission_description', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'Pages',
            },
        ),
        migrations.CreateModel(
            name='Userreg',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Username', models.CharField(max_length=100)),
                ('Useremail', models.CharField(max_length=100)),
                ('Firstname', models.CharField(max_length=100)),
                ('Lastname', models.CharField(max_length=100)),
                ('password', models.CharField(max_length=100)),
                ('datecreated', models.DateTimeField(auto_now_add=True)),
                ('user_thumbnail', models.ImageField(blank=True, default='default.jpg', upload_to='images/')),
            ],
            options={
                'db_table': 'useregister',
            },
        ),
        migrations.CreateModel(
            name='UserRoles',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('RoleName', models.CharField(max_length=100, verbose_name='RoleName')),
            ],
            options={
                'db_table': 'userrole',
            },
        ),
        migrations.CreateModel(
            name='UserSession',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('session', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='sessions.Session')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='user_id_session', to='authapp.Userreg')),
            ],
        ),
        migrations.AddField(
            model_name='userreg',
            name='Role',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='userrole', to='authapp.UserRoles'),
        ),
        migrations.CreateModel(
            name='Role_permissions',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ban', models.BooleanField(default=False, null=True)),
                ('kick', models.BooleanField(default=False, null=True)),
                ('manage_posts', models.BooleanField(default=False, null=True)),
                ('textwelcome', models.BooleanField(default=False, null=True)),
                ('email', models.BooleanField(default=False, null=True)),
                ('can_access', models.BooleanField(default=False, null=True)),
                ('can_view', models.BooleanField(default=False, null=True)),
                ('can_promote', models.BooleanField(default=False, null=True)),
                ('Role_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='Role_id', to='authapp.UserRoles')),
                ('permission_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='permission_id', to='authapp.Pages')),
            ],
            options={
                'db_table': 'Role_permissions',
            },
        ),
        migrations.CreateModel(
            name='login_details',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('lastlogin', models.DateTimeField(auto_now_add=True)),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='userid', to='authapp.Userreg')),
            ],
            options={
                'db_table': 'login_details',
            },
        ),
        migrations.CreateModel(
            name='Banfromgame',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Banned_until', models.DateTimeField()),
                ('Banned_time', models.DateTimeField(auto_now_add=True)),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='user_id_bangame', to='authapp.Userreg')),
            ],
            options={
                'db_table': 'Banfromgame',
            },
        ),
        migrations.CreateModel(
            name='Banfromforum',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Banned_until', models.DateTimeField()),
                ('Banned_time', models.DateTimeField(auto_now_add=True)),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='user_id_ban', to='authapp.Userreg')),
            ],
            options={
                'db_table': 'Banfromforum',
            },
        ),
        migrations.CreateModel(
            name='admin_actions',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user_kick_forum', models.BooleanField(default=0)),
                ('user_ban_forum', models.BooleanField(default=0)),
                ('user_ban_game', models.BooleanField(default=0)),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='user_id_actions', to='authapp.Userreg')),
            ],
            options={
                'db_table': 'admin_actions',
            },
        ),
    ]
