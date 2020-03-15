#!/usr/bin/python
# -*- coding: utf-8 -*-


from django.conf.urls import url

from App import views

urlpatterns = [


    url('^count/', views.count, name='count'),
    url('^countdata', views.countdata, name='countdata')


]

