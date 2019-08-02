"""Juillet URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include
from django.conf.urls import url
from home.views import home_view
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from inscription.views import inscription_view , connexion_view , principal_view,logout,retrait_view,depot_view,historique_view,match_view,cart_create,cartlist,cartDelete,panier
from django.contrib.auth import views as auth_views 
urlpatterns =[
    path('', home_view, name='home'),
    path('admin/', admin.site.urls),
    path('sigin/', inscription_view , name="sigin" ),
    path('principal/', principal_view, name="principal"),
    path('login/', connexion_view, name="login" ),
    path('logout/', logout, name="logout" ),
    path('retrait/',retrait_view, name="retrait" ),
    path('depot/', depot_view, name="depot" ),
    path('historique/',historique_view, name="transac" ),
    path('panier/',panier, name="panier" ),
    path('jeux/<int:idcat>',match_view, name="jeux" ),
    url(r'^cart/create/$', cart_create, name='cart_create'),
    path('panier/list/', cartlist, name='room_list'),
    path('panier/delete/<int:pk>',cartDelete , name='room_delete')
]

urlpatterns += staticfiles_urlpatterns()
