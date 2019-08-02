from  django import forms
from .models import Depot, Retrait
class registerForm(forms.Form):
       nom = forms.CharField(max_length=60)
       prenoms = forms.CharField(max_length=60)
       date_naissance = forms.DateField()
       sexe = forms.CharField(max_length=20)
       email = forms.EmailField(max_length=254)
       pays =  forms.CharField(max_length=60)
       ville = forms.CharField(max_length=20)
       numero = forms.CharField(max_length=20)
       password = forms.CharField(max_length=100)

class DepotForm(forms.ModelForm):
    
    class Meta:
        model = Depot
        fields = ('operateur','numero', 'Montant_depot',)

        widgets = {
            'operateur': forms.TextInput(attrs={'class': 'textinputclass'}),
            'numero': forms.TextInput(attrs={'class': 'textinputclass'}),
            'Montant_depot': forms.TextInput(attrs={'class': 'textinputclass'}),
        }