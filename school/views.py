from django.shortcuts import render,redirect
from django.contrib import messages
from django.core.paginator import Paginator
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
    t = len(T)

    S = Student.objects.all()
    paginator = Paginator(S,6)
    page_number = request.GET.get('page')
    S = paginator.get_page(page_number)

    s = len(S)

    F = Fees.objects.all()
    f = len(F)
    N = NonTeacher.objects.all()
    n = len(N)
    P = Parent.objects.all()
    p= len(P)
    C = Course.objects.all()
    c = len(C)
    U = User.objects.all()
    u = len(U)
    return render(request, 'school/index.html', {'T':T,'S':S,'F':F,'N':N,'P':P,'C':C,'U':U,'t':t,'s':s,'f':f,'n':n,'p':p,'c':c,'u':u})

#function for logging out
def logout(request):
    auth.logout(request)
    return redirect('/')


# function for the delete
def destroy(request,id):
    T = Teacher.objects.get(id=id)
    T.delete()
    return redirect('index2')

def destroy1(request,id):
    S = Student.objects.get(id=id)
    S.delete()
    return redirect('school/index.html')

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

# writing the student record files to csv
def getfile(request):
    response = HttpResponse(content_type='text/csv')  
    response['Content-Disposition'] = 'attachment; filename="student.csv"'  
    st = Student.objects.all()  
    writer = csv.writer(response)
    writer.writerow(['Student ID','First_Name','Last_Name','Birth date','Class','DateJoined'])  
    for s in st:  
        writer.writerow([s.id,s.s_fname,s.s_lname,s.s_bdate,s.s_class,s.s_datejoined])  
    return response 

# writing the teacher to the csv file format
def file(request):
    response = HttpResponse(content_type='text/csv')  
    response['Content-Disposition'] = 'attachment; filename="teacher.csv"'  
    t = Teacher.objects.all()  
    writer = csv.writer(response)
    writer.writerow(['Teacher ID','First_Name','Last_Name','Course','Position','Email','Salary','DateJoined'])  
    for s in t:  
        writer.writerow([s.id,s.t_fname,s.t_lname,s.t_course,s.t_position,s.t_email,s.t_salary,s.t_datejoined])  
    return response 


# writing the non teachers to a csv file
def b(request):
    response = HttpResponse(content_type='text/csv')  
    response['Content-Disposition'] = 'attachment; filename="Non-teacher.csv"'  
    t = NonTeacher.objects.all()  
    writer = csv.writer(response)
    writer.writerow(['Non-Teacher ID','First_Name','Last_Name','Position','Email','Salary','DateJoined'])  
    for s in t:  
        writer.writerow([s.id,s.n_fname,s.n_lname,s.n_position,s.n_email,s.n_salary,s.n_datejoined])  
    return response 


# writing the course data to csv file
def pt(request):
    response = HttpResponse(content_type='text/csv')  
    response['Content-Disposition'] = 'attachment; filename="Course.csv"'  
    t = Course.objects.all()  
    writer = csv.writer(response)
    writer.writerow(['Course ID','Course_Name','Course_duration','Teacher_ID'])  
    for s in t:  
        writer.writerow([s.id,s.c_name,s.c_duration,s.teach_id])  
    return response 


# writing the parents data to a csv file
def er(request):
    response = HttpResponse(content_type='text/csv')  
    response['Content-Disposition'] = 'attachment; filename="Parents.csv"'  
    t = Parent.objects.all()  
    writer = csv.writer(response)
    writer.writerow(['Course ID','First_Name','Last_Name','Contact','Email','Student_ID'])  
    for s in t:  
        writer.writerow([s.id,s.p_fname,s.p_lname,s.p_contact,s.p_email,s.stu_id])  
    return response 


# writing the fees data to a csv file
def zt(request):
    response = HttpResponse(content_type='text/csv')  
    response['Content-Disposition'] = 'attachment; filename="Fees.csv"'  
    t = Fees.objects.all()  
    writer = csv.writer(response)
    writer.writerow(['Fees ID','First_Name','Last_Name','Amount Owed','Student_ID'])  
    for s in t:  
        writer.writerow([s.id,s.f_fname,s.f_lname,s.f_amt,s.f_stu_id])  
    return response 

def to(request):
    response = HttpResponse(content_type='text/csv')  
    response['Content-Disposition'] = 'attachment; filename="Admin.csv"'  
    t = User.objects.all()  
    writer = csv.writer(response)
    writer.writerow(['Admin ID','User_Name','DateJoined'])  
    for s in t:  
        writer.writerow([s.id,s.username,s.date_joined])  
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
    if request.method == "POST":
        subject = request.POST['title']
        msg = request.POST['msg'] 
        fro = request.POST['email']  
        to = settings.EMAIL_HOST_USER
        res = send_mail(subject, msg, fro, [to])  
        if(res == 1):  
            messages.info(request, "Mail Sent Successfuly")  
            return redirect('school/index.html')
        else:  
            messages.info(request, "Mail could not sent")  
        return redirect('school/index.html') 

# displaying the form for adding students
def add_stu(request):
    return render(request, 'school/add_stu.html')

# insert into students
def get_stu(request):
    
    if request.method == "POST":
        s_fname =request.POST["fname"]
        s_lname =request.POST["lname"]
        s_bdate =request.POST["bdate"]
        s_class =request.POST["class"]
        s_datejoined =request.POST["datej"]
        s = Student(s_fname=s_fname,s_lname=s_lname,s_bdate=s_bdate,s_class=s_class,s_datejoined=s_datejoined)
        s.save()
        if s is None:
            messages.info(request, 'Student was not added')
            return redirect('add_stu')
            
        else:
            messages.info(request, 'Student added successfully')
            return redirect('add_stu')
        
#view for the form       
def add_tea(request):
    return render(request, 'school/add_tea.html')


#inserting to the teacher
def get_tea(request):
    if request.method == "POST":
        t_fname = request.POST['fname']
        t_lname = request.POST['lname']
        t_course = request.POST['course']
        t_position = request.POST['post']
        t_email = request.POST['email']
        t_salary = request.POST['salary']
        t_datejoined = request.POST['datej']
        
        t = Teacher(t_fname=t_fname,t_lname=t_lname,t_course=t_course,t_position=t_position,t_email=t_email,t_salary=t_salary,t_datejoined=t_datejoined)
        t.save()
        if t is None:
            messages.info(request, 'Teacher was not added')
            return redirect('add_tea')
        else:
            messages.info(request,'Successfully added teacher')
            return redirect('add_tea')

 #form for the non teacher      
def add_non(request):
    return render(request, 'school/add_non.html')

#insert into non-teacher
def get_non(request):
    if request.method == "POST":
        n_fname = request.POST['fname']
        n_lname = request.POST['lname']
        n_position = request.POST['post']
        n_email = request.POST['email']
        n_salary = request.POST['salary']
        n_datejoined = request.POST['datej']
        
        n = NonTeacher(n_fname=n_fname,n_lname=n_lname,n_position=n_position,n_email=n_email,n_salary=n_salary,n_datejoined=n_datejoined)
        n.save()
        if n is None:
            messages.info(request, 'Teacher was not added')
            return redirect('add_non')
        else:
            messages.info(request,'Successfully added teacher')
            return redirect('add_non')

#course form
def add_course(request):
    T = Teacher.objects.all()
    return render(request, 'school/add_course.html',{'T':T})

# insert into course
def get_course(request):
    if request.method=="POST":
        c_name = request.POST['name']
        c_duration = request.POST['dur']
        teach_id = request.POST['teach']

        c = Course(c_name=c_name,c_duration=c_duration, teach_id=teach_id)
        c.save()
        if c is not None:
            messages.info(request, 'Course successfully added')
            return redirect('add_course')
        else:
            messages.info(request, 'Course was not added')
            return redirect('add_course')


# parent form
def add_parent(request):
    S = Student.objects.all()
    context = {'S': S}
    return render(request,'school/add_parent.html',context)

#insert parent
def get_parent(request):
    if request.method == "POST":
        p_fname = request.POST['fname']
        p_lname = request.POST['lname']
        p_contact = request.POST['contact']
        p_email = request.POST['email']
        stu_id = request.POST['stu']
        s = Parent(p_fname=p_fname,p_lname=p_lname,p_contact=p_contact,p_email=p_email,stu_id=stu_id)
        s.save()
        if s is not None:
            messages.info(request, 'Successfully added parent')
            return redirect('add_parent')
        else:
            messages.info(request, 'Parent was not added')
            return redirect('add_parent')


# fees form
def add_fee(request):
    S = Student.objects.all()
    context = {'S':S} 
    return render(request, 'school/add_fees.html',context)

# insert fees
def get_fee(request):
    if request.method =="POST":
        f_fname = request.POST['fname']
        f_lname = request.POST['lname']
        f_amt = request.POST['amt']
        f_stu_id = request.POST['stu']
        f = Fees(f_fname=f_fname,f_lname=f_lname,f_amt=f_amt,f_stu_id=f_stu_id)
        f.save()
        if f is not None:
            messages.info(request, 'Fees added successfully')
            return redirect('add_fee')
        else:
            messages.info(request, 'Fees was not added')
            return redirect('add_fee')

# admin form
def add_admin(request):
    return render(request, 'school/add_admin.html')


# insert into admin
def get_admin(request):
    if request.method =="POST":
        password = request.POST['pass']
        username = request.POST['uname']
        date_joined = request.POST['date']
        u = User.objects.create_user(password=password,username=username,date_joined=date_joined)
        u.save()
        if u is not None:
            messages.info(request, 'Admin added successfully')
            return redirect('add_admin')
        else:
            messages.info(request, 'Admin was not added')
            return redirect('add_admin')


#edit stu
def edit_stu(request, id):
    S = Student.objects.all(id=id)
    context = {'S':S}
    return render(request, 'school/edit_stu.html', context)

"""
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
"""