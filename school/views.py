from django.shortcuts import render,redirect
from django.contrib import messages
from django.views.generic import ListView
from django.contrib.auth.models import User, auth
from .models import Student,Teacher,Fees,NonTeacher,Parent,Course
from django.http import HttpResponse  
from django.core.mail import send_mail  
from django.conf import settings
import csv



#login  page
def index(request):
    return render(request, 'school/login.html')

#main area
def index2(request):
    T = Teacher.objects.all()
    S = Student.objects.all()
    F = Fees.objects.all()
    N = NonTeacher.objects.all()
    P = Parent.objects.all()
    C = Course.objects.all()
    U = User.objects.all()
    return render(request, 'school/index.html', {'T':T,'S':S,'F':F,'N':N,'P':P,'C':C,'U':U})

#function for logging out
def logout(request):
    auth.logout(request)
    return redirect('/')


# function for the delete
def destroy(request,id):
    T = Teacher.objects.get(id=id)
    T.delete()
    return redirect('school/index.html', {'T':T})

def destroy1(request,id):
    S = Student.objects.get(id=id)
    S.delete()
    return redirect('school/index.html', {'S':S})

def destroy2(request,id):
    F = Fees.objects.get(id=id)
    F.delete()
    return redirect('school/index.html', {'F':F})

def destroy3(request,id):
    N = NonTeacher.objects.get(id=id)
    N.delete()
    return redirect('school/index.html', {'N':N})

def destroy4(request,id):
    P = Parent.objects.get(id=id)
    P.delete()
    return redirect('school/index.html', {'P':P})

def destroy5(request,id):
    C = Course.objects.get(id=id)
    C.delete()
    return redirect('index2')

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
            return redirect('index2')
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