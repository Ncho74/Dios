from operator import mod
from statistics import mode
from django.db import models
class EtatCivil(models.Model):
    id_etatCivil=models.AutoField(primary_key=True)
    lib_etatCivil=models.CharField(max_length=15)
    def __str__(self):
        return self.lib_etatCivil

class Customer(models.Model):
    id_customer=models.AutoField(primary_key=True)
    nom_customer=models.CharField(max_length=50)
    premon_customer=models.CharField(max_length=100)
    email_customer=models.EmailField(max_length=100)
    number_customer=models.CharField(max_length=15)
    lieuHabit_customer=models.CharField(max_length=100)
    age_customer=models.CharField(max_length=150)
    pwd_customer=models.CharField(max_length=500)
    EtatCivil=models.ForeignKey(EtatCivil,on_delete=models.CASCADE)
    status_customer=models.BooleanField(default=False)
class DownloadImage(models.Model):
    id_downloadImage=models.AutoField(primary_key=True)
    lib_downloadImage=models.CharField(max_length=500)
    customer=models.ForeignKey(Customer,on_delete=models.CASCADE)
