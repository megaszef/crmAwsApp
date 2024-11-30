from django.db import models

class Person(models.Model):
    name = models.CharField(max_length=100)
    sex = models.IntegerField(default=0)
    age = models.IntegerField(default=18)
    image = models.ImageField(upload_to='person_media', blank=True, null=True)
    activePerDay = models.IntegerField(default=0)
