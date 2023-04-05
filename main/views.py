from django.conf import settings
from django.shortcuts import render
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_protect 
from django.core.cache.backends.base import DEFAULT_TIMEOUT
from django.views.decorators.cache import cache_page


CACHE_TTL = getattr(settings, 'CACHE_TTL', DEFAULT_TIMEOUT)

# Create your views here.
#Notice that we have added the @cache_page() decorator to the view function, along with a time to live.
@cache_page(CACHE_TTL)
@csrf_protect 
def main(request):
    return HttpResponse("Successfully logged in!")