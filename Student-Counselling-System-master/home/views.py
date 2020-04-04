from django.shortcuts import render

def index(request):
    return render(request,'home/index.html')

def about(request):
    #print(dict)
    return render(request,'home/about.html')