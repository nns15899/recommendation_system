from django.contrib import admin
from django.urls import path
from enterdata import views

urlpatterns = [
    path('find',views.find,name='find'),
    path('listcolleges',views.listcolleges,name='listcolleges'),
    path('apply',views.apply,name='apply'),
    path('insert',views.insertcollege,name='insertcollege'),
    
]
