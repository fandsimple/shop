# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2018-09-27 10:37
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('App', '0006_foodtype'),
    ]

    operations = [
        migrations.RenameField(
            model_name='foodtype',
            old_name='typenames',
            new_name='typename',
        ),
    ]
