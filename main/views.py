from django.shortcuts import render
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_protect 

# Create your views here.
@csrf_protect 
def main(request):
    return HttpResponse("Successfully logged in!")