from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import ListView
from .models import *

class MainPageView(LoginRequiredMixin, ListView):
    model = Project
    template_name = 'project_list.html'
    name = 'MainPage'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['test']=1
        return context
    