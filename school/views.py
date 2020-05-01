from django.shortcuts import render,redirect
from django.contrib import messages
from django.views.generic import ListView
from django.contrib.auth.models import auth
from .models import Student,Teacher,Fees,NonTeacher,Parent,Course
from django.http import HttpResponse  
from django.core.mail import send_mail  
from django.conf import settings
import csv



#main user interface
def index(request):
    #u = Student.objects.all()
    #return render(request, 'school/index.html',{'u':u})
    T = Teacher.objects.all()
    return render(request, 'school/index.html',{'T':T})
    #return render(request, 'school/index.html',{'T':T})
    #O = NonTeacher.objects.all()
    #return render(request, 'school/index.html',{'O':O})
    #P = Parent.objects.all()
    #return render(request, 'school/index.html',{'P':P})
    #C = Course.objects.all()
    #return render(request, 'school/index.html',{'C':C})


#function for logging out
def logout(request):
    auth.logout(request)
    return redirect('/')
    

#showing the models at the user interface
def show(request):    
    T = Teacher.objects.all()
    return render(request, 'school/show.html',{'T':T})


def show1(request):
    b = Teacher.objects.all()
    return render(request,'school/index.html#student',{'b':b})


def show2(request):
    c = Parent.objects.all()
    return render(request, 'school/index.html#parent',{'c':c})

def show3(request):
    d = NonTeacher.objects.all()
    return render(request, 'school/index.html#other',{'d':d})

def show4(request):
    e = Course.objects.all()
    return render(request, 'school/index.html#courses',{'e':e})

def show5(request):
    f = Course.objects.all()
    return render(request, 'school/index.html',{'f':f})

# writing the files to csv
def getfile(request):
    response = HttpResponse(content_type='text/csv')  
    response['Content-Disposition'] = 'attachment; filename="student.csv"'  
    st = Student.objects.all()  
    writer = csv.writer(response)  
    for s in st:  
        writer.writerow([s.id,s.s_fname,s.s_lname,s.s_bdate,s.s_class,s.s_datejoined])  
    return response  

# login authentication
def login(request):
    if request.method =='POST':
        username = request.POST['username']
        password = request.POST['password']
        user = auth.authenticate(username=username,password=password)
        if user is not None:
            auth.login(request, user)
            return redirect('school/index.html')
        else:
            messages.info(request, 'Invalid username or password')
            return redirect('/')
    else:   
        return render(request, 'school/login.html')  


# email processing
def mail(request):  
    subject = "Greetings"  
    msg     = "Congratulations for your success on winning"  
    to      = "maxquophi@gmail.com"  
    res     = send_mail(subject, msg, settings.EMAIL_HOST_USER, [to])  
    if(res == 1):  
        msg = "Mail Sent Successfuly"  
    else:  
        msg = "Mail could not sent"  
    return HttpResponse(msg)  