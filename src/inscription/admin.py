from django.contrib import admin
from .models import Utilisateur,Depot,Retrait,Categorie,Championat,Equipe,Match,choixMatch,Paris
# Register your models here.
admin.site.register(Utilisateur)
admin.site.register(Depot)
admin.site.register(Retrait)
admin.site.register(Categorie)
admin.site.register(Championat)
admin.site.register(Equipe)
admin.site.register(Match)
admin.site.register(choixMatch)
admin.site.register(Paris)