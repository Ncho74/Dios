from distutils.command.upload import upload
from django.db import models
from customer.models import Customer
from vendor.models import vendor
# Create your models here.
class Role(models.Model):
    id_role=models.AutoField(primary_key=True)
    role=models.TextField()
    def __str__(self):
        return self.role
class Dios(models.Model):
    id_dios=models.AutoField(primary_key=True)
    nom_dios=models.CharField(max_length=100)
    email_dios=models.EmailField(max_length=100)
    logo_dios=models.ImageField(upload_to="ImageDios/")
    description_dios=models.TextField()
    def __str__(self):
        return self.nom_dios

class user(models.Model):
    id_user=models.AutoField(primary_key=True)
    nom_user=models.CharField(max_length=50)
    premon_user=models.CharField(max_length=100)
    photo_user=models.ImageField(upload_to="ImageAdmin/")
    email_user=models.EmailField(max_length=500)
    password_user=models.CharField(max_length=500)
    dios=models.ForeignKey(Dios,on_delete=models.CASCADE)

class Bannir_customer(models.Model):
    id_bannir=models.AutoField(primary_key=True)
    lib_bannir=models.CharField(max_length=100)
    customer=models.ForeignKey(Customer,on_delete=models.CASCADE)
    admin=models.CharField(max_length=500)
class Bannir_vendor(models.Model):
    id_bannir=models.AutoField(primary_key=True)
    lib_bannir=models.CharField(max_length=100)
    vendor=models.ForeignKey(vendor,on_delete=models.CASCADE)
    admin=models.CharField(max_length=500)
class Annonce(models.Model):
    id_annonce=models.AutoField(primary_key=True)
    lib_annonce=models.TextField()
    contenu_annonce=models.FileField(upload_to="annonce/")
    date_annonce=models.TextField()
    admin=models.ForeignKey(user,on_delete=models.CASCADE)
