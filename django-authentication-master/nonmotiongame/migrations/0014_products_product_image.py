# Generated by Django 3.0.5 on 2021-04-22 21:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('nonmotiongame', '0013_products_userproducts'),
    ]

    operations = [
        migrations.AddField(
            model_name='products',
            name='product_image',
            field=models.ImageField(default='default.jpg', upload_to=''),
            preserve_default=False,
        ),
    ]
