# Generated by Django 3.2.6 on 2023-09-13 05:20

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('front', '0012_alter_result_date_attempted'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='result',
            name='date_attempted',
        ),
    ]
