from django.db import models
from django.contrib.auth.models import Group

class Project(models.Model):
    name = models.CharField(max_length=255, null=False, blank=False, default="New project")
    description = models.TextField(null=True, blank=True)
    start_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    finished = models.BooleanField(default=False)
    group = models.ForeignKey(Group, on_delete=models.CASCADE, null=False, blank=False)

    def __str__(self):
        return self.name
