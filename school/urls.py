from django.conf.urls import url
from django.contrib import admin
from .import views


urlpatterns = [
    url(r'^$', views.login, name='login'),
    url('index', views.index, name='index'),
    url('show', views.show, name='show'),
    url('logout', views.logout, name='logout'),
    url('show1', views.show1, name='show1'),
    url('show2', views.show2, name='show2'),
    url('show3', views.show3, name='show3'),
    url('show4', views.show4, name='show4'),
    url('show5', views.show5, name='show5'),
    url('csv', views.getfile),
    url('mail', views.mail),
]
