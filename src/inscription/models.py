from django.db import models
from django.utils import timezone
from django.shortcuts import reverse

# Create your models here.
class Utilisateur (models.Model):
       nom = models.CharField(max_length=60,blank=False)
       prenoms = models.CharField(max_length=60,blank=False)
       username = models.CharField(max_length=60,blank=False,default="user")
       date_naissance = models.DateField()
       sexe = models.CharField(max_length=20)
       email = models.EmailField(max_length=254)
       pays =  models.CharField(max_length=60)
       ville = models.CharField(max_length=20)
       solde = models.DecimalField(max_digits=10, decimal_places=2,default=True)
       numero = models.CharField(max_length=20)
       password = models.CharField(max_length=100,blank=False)
    
       def  __str__(self):
           return self.username
    
    
class Depot(models.Model):
    Utilisateur = models.ForeignKey(Utilisateur, on_delete=models.CASCADE)
    operateur = models.CharField(max_length=20)
    numero = models.CharField(max_length=20)
    depot_date = models.DateTimeField(default=timezone.now)
    Montant_depot = models.DecimalField(max_digits=10, decimal_places=2,default=False)
    
class Retrait(models.Model):
    Utilisateur = models.ForeignKey(Utilisateur, on_delete=models.CASCADE)
    operateur =   models.CharField(max_length=20)
    numero = models.CharField(max_length=20)
    retrait_date = models.DateTimeField(default=timezone.now)
    Montant_retrait = models.DecimalField(max_digits=10, decimal_places=2,default=False)
 
 
class Historique(models.Model):
      Utilisateur = models.ForeignKey(Utilisateur, on_delete=models.CASCADE)
      Transaction =   models.CharField(max_length=20)
      date = models.DateTimeField(default=timezone.now)
      Montant= models.DecimalField(max_digits=10, decimal_places=2,default=False)
      operateur =   models.CharField(max_length=20)
      numero = models.CharField(max_length=20)
      
      
class Categorie(models.Model):
      nom_cate=models.CharField(max_length=20)
      def  __str__(self):
           return self.nom_cate

class Championat(models.Model):
      Categorie = models.ForeignKey(Categorie, on_delete=models.CASCADE)
      nom_cha =   models.CharField(max_length=20)
      def  __str__(self):
           return self.nom_cha
       
class Equipe(models.Model):
      Championat = models.ForeignKey(Championat, on_delete=models.CASCADE)
      nom_Equipe =   models.CharField(max_length=20)     
      def  __str__(self):
             return  str(self.nom_Equipe)
         
class Match(models.Model):
      equipe_1 = models.ForeignKey(Equipe, on_delete=models.CASCADE,related_name='equipe_1')
      equipe_2 = models.ForeignKey(Equipe, on_delete=models.CASCADE)
      date = models.DateField()
      heure = models.TimeField()
      v1=models.DecimalField(max_digits=10, decimal_places=2,default=False)
      v2=models.DecimalField(max_digits=10, decimal_places=2,default=False)
      x=models.DecimalField(max_digits=10, decimal_places=2,default=False)
      Championat = models.ForeignKey(Championat, on_delete=models.CASCADE)
      Categorie = models.ForeignKey(Categorie, on_delete=models.CASCADE)
      def  __str__(self):
             return str(self.equipe_1)+" vs "+str(self.equipe_2)
         
         
# Item == Match
# choixMatch( = OrderItem
# Order = Paris

class choixMatch(models.Model):
       Utilisateur = models.ForeignKey(Utilisateur, on_delete=models.CASCADE)
       match = models.CharField(max_length=60) 
       ordered = models.BooleanField(default=False)
       equipe =  models.CharField(max_length=20)   
       cote = models.DecimalField(max_digits=10, decimal_places=2,default=False)
       def  __str__(self):
             return str(self.match)
         
class Paris(models.Model):
      Utilisateur = models.ForeignKey(Utilisateur, on_delete=models.CASCADE)
      ref_code = models.CharField(max_length=20, blank=True, null=True)
      selection = models.ManyToManyField(choixMatch)
      coteTotal = models.DecimalField(max_digits=10, decimal_places=2,default=False)
      Mise=models.DecimalField(max_digits=10, decimal_places=2,default=False)
      Gain=models.DecimalField(max_digits=10, decimal_places=2,default=False)
      statut=models.CharField(max_length=20) 