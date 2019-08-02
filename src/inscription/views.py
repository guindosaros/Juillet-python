from django.shortcuts import render, redirect,get_object_or_404
from .forms import  registerForm,DepotForm
from django.urls import reverse
from  .models import Utilisateur,Depot,Retrait,Historique,Match,choixMatch,Paris
from  django.http import HttpResponse,FileResponse,JsonResponse
from  django.contrib import messages
from django.views.generic import View
from  django.core.paginator import Paginator
from django.db.models import Sum
import json

def  inscription_view(request):
    nomut= request.POST.get('Nom')
    prenomsut = request.POST.get('Prenoms')
    date_naissanceut = request.POST.get('Naissance')
    sexeut  = request.POST.get('sexe')
    emailut = request.POST.get('mail')
    paysut = request.POST.get('pays')
    villeut = request.POST.get('Ville')
    numerout = request.POST.get('Numero')
    passwordut = request.POST.get('password')
    passwordut2 = request.POST.get('password2')
    pseudout=request.POST.get('Pseudo')
    text = ""
    if request.method == "POST":
        if paysut  == "" or sexeut == "" or pseudout == "" or nomut == "" or prenomsut == ""  or date_naissanceut == "" or emailut == "" or numerout == "" or  villeut == ""  or passwordut == "" or passwordut2 == "" :
            messages.warning(request, "Veillez Remplie correctement tous les champs SVP")
        elif passwordut != passwordut2:
              text = " les deux mots de passe ne sont pas identiques "
        else:
            Utilisateur.objects.create(nom=nomut,prenoms=prenomsut,date_naissance=date_naissanceut ,sexe=sexeut,email=emailut,pays=paysut,ville=villeut,numero=numerout,password=passwordut,username=pseudout)
            messages.success(request, ' Félicitation Votre compte à été crée avec succès !!!')
        
    context = {
        'error' : text
      }
    return render(request,"inscription.html",context)


def connexion_view(request):
    mail=request.POST.get('username')
    mdp=request.POST.get('password')
    queryset=Utilisateur.objects.all()
    users = queryset
    context = {}
    if request.method == "POST":
        for user in users:
            usermail=user.email
            userpass=user.password 
            userid=user.id
            username=user.nom
            usersolde= int(user.solde)
            userprenom=user.prenoms
            userpseudo=user.username
            if usermail==mail and  userpass==mdp:
                request.session['id'] = userid
                request.session['username'] = username
                request.session['usersolde'] = usersolde
                request.session['userprenom'] = userprenom
                request.session['pseudo'] = userpseudo
                return redirect('principal')
        else:
                messages.warning(request, ' Email ou mot de pass incorrecte ')
                print(usermail,userpass,userid)
    return render(request,'connexion/connexion.html',context)


def principal_view(request):
    if request.session.has_key('id'):
        userid=request.session['id'] 
        p=Utilisateur.objects.get(pk=userid)
        solde = int(p.solde)
        pseudo = p.username
        context= {
            "id": userid,
            "solde":solde,
            "pseudo":pseudo
        }
        return render(request,"principal/principal.html",context)
    else:
       return redirect('login')
   
   
def logout(request):
    try:
        del request.session['id'] 
        del request.session['username'] 
        del request.session['usersolde'] 
        del request.session['userprenom']
    except:
       pass 
    return redirect('home')

def retrait_view(request):
    if request.session.has_key('id'):
        userid=request.session['id'] 
        nom=request.session['username']
        prenoms=request.session['userprenom']
        solde=request.session['usersolde']
        pseudo=request.session['pseudo']
        p=Utilisateur.objects.get(pk=userid)
        solde = int(p.solde)
        pseudo = p.username
        operateur=request.POST.get('operateur')
        Numero=request.POST.get('numero')
        montant= request.POST.get('montant')
        context= {
            "id": userid,
            "nom": nom,
            "prenoms": prenoms,
            "solde":solde,
            "pseudo":pseudo
        }
        if request.method == "POST":
            nouveausolde = 0
            if operateur  == "" or Numero == "" or montant == "":
                messages.warning(request, 'Remplie correctement les champs')
            elif int(montant) >= solde :
                    messages.warning(request, 'Desolé Vous ne disposer de d\' assez de fond pour effectuer cette transaction')
            else:
                operation = "Retrait"
                nouveausolde = solde - int(montant)
                p = Utilisateur.objects.get(pk=userid)
                p.solde = nouveausolde
                p.save()
                Retrait.objects.create(Utilisateur_id=userid,Montant_retrait=montant,numero=Numero,operateur=operateur)
                Historique.objects.create(Utilisateur_id=userid,Transaction=operation,Montant=montant,numero=Numero,operateur=operateur)
                messages.success(request, ' Votre Retrait de '+montant+" a été effectuer Avec Succés Votre Nouveau solde est de "+str(nouveausolde))
                return redirect('principal')
        return render(request,"principal/retrait.html",context)
    else:
        return redirect('login')

def depot_view(request):
    if request.session.has_key('id'):
        userid=request.session['id'] 
        nom=request.session['username']
        prenoms=request.session['userprenom']
        solde=request.session['usersolde']
        pseudo=request.session['pseudo']
        p=Utilisateur.objects.get(pk=userid)
        solde = int(p.solde)
        pseudo = p.username
        operateur=request.POST.get('operateur')
        Numero=request.POST.get('Numero')
        montant= request.POST.get('montant')
        context= {
            "id": userid,
            "nom": nom,
            "solde":solde,
            "pseudo":pseudo
        } 
        if request.method == "POST":
            nouveausolde = 0
            if operateur  == "" or Numero == "" or montant == "":
                messages.warning(request, 'Remplie correctement les champs')
            else:
                nouveausolde = solde + int(montant)
                operation = "depôt"
                p = Utilisateur.objects.get(pk=userid)
                p.solde = nouveausolde
                p.save()
                Depot.objects.create(Utilisateur_id=userid,Montant_depot=montant,numero=Numero,operateur=operateur)
                Historique.objects.create(Utilisateur_id=userid,Transaction=operation,Montant=montant,numero=Numero,operateur=operateur)
                messages.success(request, '  Votre Depôt de '+montant+" a été effectuer Avec Succés Votre Nouveau solde est de "+str(nouveausolde))
                return redirect('principal')
        return render(request,"principal/depot.html",context)

    else:
     return redirect('login')
 
def historique_view(request):
    if request.session.has_key('id'):
        userid=request.session['id'] 
        p=Utilisateur.objects.get(pk=userid)
        solde = int(p.solde)
        pseudo = p.username
        h=Historique.objects.filter(Utilisateur_id=userid)
        histo=h
        context= {
            "id": userid,
            "solde":solde,
            "pseudo":pseudo,
            "histo": histo
        }
        return render(request,"principal/historique.html", context)
    else:
     return redirect('login')
 
def match_view(request,idcat):
    if request.session.has_key('id'):
        userid=request.session['id'] 
        p=Utilisateur.objects.get(pk=userid)
        solde = int(p.solde)
        pseudo = p.username
        r = Match.objects.filter(Categorie_id=idcat).order_by('date')
        liste = r
        for t in liste:
            p = t
        numpage = Paginator(liste,4)
        page = request.GET.get('page')
        liste = numpage.get_page(page)
        context= {
            "id": userid,
            "solde":solde,
            "pseudo":pseudo,
            "liste":liste,
            "Categorie":p.Categorie,
        }
        return render(request,"principal/jeux.html", context)
    else:
     return redirect('login')


def cart_create(request):
     if request.session.has_key('id'):
        userid=request.session['id'] 
        p=Utilisateur.objects.get(pk=userid)
        solde = int(p.solde)
        pseudo = p.username
        idmatch = request.GET.get('idmatch')
        match= request.GET.get('match')
        paris = request.GET.get('paris')
        coteequip = request.GET.get('coteequip')
        print(idmatch,match,paris,coteequip,userid)
        choixMatch.objects.create(Utilisateur_id=userid,equipe=paris,cote=coteequip, match=match)
        
        
        return JsonResponse({'status': 'OK'})
     else:
        return redirect('login')
    
def  cartlist(request):
            if request.session.has_key('id'):
                userid=request.session['id'] 
                p=Utilisateur.objects.get(pk=userid)
                solde = int(p.solde)
                pseudo = p.username
                liste =  list(choixMatch.objects.filter(Utilisateur_id=userid).values())
                data =  dict()
                data['liste'] = liste
                return JsonResponse(data)
            else:
               return redirect('login')
           
def  cartDelete(request, pk):
            if request.session.has_key('id'):
                userid=request.session['id'] 
                p=Utilisateur.objects.get(pk=userid)
                solde = int(p.solde)
                pseudo = p.username
                data =  dict()
                room = choixMatch.objects.get(pk=pk)
                if room:
                    room.delete()
                    data['message'] =  "Match Suprimer!"
                else:
                    data['message'] =  "Error!"
                return JsonResponse(data)
            else:
               return redirect('login')
           
def panier(request):
    if request.session.has_key('id'):
        userid=request.session['id'] 
        p=Utilisateur.objects.get(pk=userid)
        solde = int(p.solde)
        pseudo = p.username
        h=Historique.objects.filter(Utilisateur_id=userid)
        histo=h
        coteTotal = choixMatch.objects.filter(Utilisateur_id=userid).aggregate(Sum('cote'))
        toi =coteTotal['cote__sum']
        mise=request.POST.get('mise')
        print(coteTotal,toi)
        context= {
            "id": userid,
            "solde":solde,
            "pseudo":pseudo,
            "histo": histo,
            "coteTotal":toi     
        }
        if request.method == "POST":
            nouveausolde = 0
            if mise  == "" :
                messages.warning(request, 'Saisir Votre Mise')
            elif int(mise) > solde :
                 messages.warning(request, 'Fonds inssufisant Votre solde est inferieur à Votre mise')
            else:
                nouveausolde = solde - int(mise)
                Gain = int(mise) * float(toi)
                ref_code = "00254"
                statut = "en cours"
                selection = choixMatch.objects.filter(Utilisateur_id=userid)
                p = Utilisateur.objects.get(pk=userid)
                p.solde = nouveausolde
                p.save()
                instance = Paris.objects.create(selection=selection)
                Paris.objects.create(Utilisateur_id=userid,coteTotal=coteTotal,Mise=mise,Gain= Gain,ref_code=ref_code ,selection=selection,statut=statut)
                messages.success(request, '  Votre paris '+mise+" a été effectuer Avec Succés Votre Nouveau Gain potentiel est de "+str(Gain))
        return render(request,"principal/panier.html", context)
    else:
     return redirect('login')
 