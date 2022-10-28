from distutils.command.upload import upload
from django.db import models

# Create your models here.
class vendor(models.Model):
    id_vendor=models.AutoField(primary_key=True)
    nom_vendor=models.CharField(max_length=50)
    prenom_vendor=models.CharField(max_length=100)
    email_vendor=models.EmailField(max_length=500)
    photo_vendor=models.ImageField(upload_to="ImageVendor/")
    telephone=models.CharField(max_length=100)
    password_vendor=models.TextField ()
    status=models.BooleanField(default=False)
class Produit(models.Model):
    id_produit=models.AutoField(primary_key=True)
    titre_produit=models.CharField(max_length=100)
    details_produit=models.TextField()
    image_produit=models.ImageField(upload_to="ImageProduit/")
    categorie_produit=models.TextField()
    date_produit=models.CharField(max_length=100)
    vendor=models.ForeignKey(vendor,on_delete=models.CASCADE)
    prix_produit=models.TextField()