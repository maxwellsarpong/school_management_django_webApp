from django.conf.urls import url
from django.contrib import admin
from .import views


urlpatterns = [
    url('index2', views.index2, name='index2'),
    url('login', views.login, name='login'),
    url(r'^$', views.index, name='index'),
    url('logout', views.logout, name='logout'),
    url('csv', views.getfile),
    url('mail', views.mail),
    url('^delete/(?P<id>\d+)/$', views.destroy, name = 'destroy'),
    url('^delete/(?P<id>\d+)/$', views.destroy1, name = 'destroy1'),
    url('^delete/(?P<id>\d+)/$', views.destroy2, name = 'destroy2'),
    url('^delete/(?P<id>\d+)/$', views.destroy3, name = 'destroy3'),
    url('^delete/(?P<id>\d+)/$', views.destroy4, name = 'destroy4'),
    url('^delete/(?P<id>\d+)/$', views.destroy5, name = 'destroy5'),
]
