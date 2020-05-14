from django.db import models
from datetime import date,time

# Create your models here.
class Student(models.Model):
    s_fname = models.CharField(max_length=200)
    s_lname = models.CharField(max_length=200)
    s_bdate = models.DateField()
    s_class = models.CharField(max_length=100)
    s_datejoined = models.DateField()

    def __str__(self):
        return self.s_fname

    class Meta:
        verbose_name_plural = 'Student'

class Teacher(models.Model):
    t_fname = models.CharField(max_length=200)
    t_lname = models.CharField(max_length=200)
    t_course =models.CharField(max_length=200)
    t_position = models.CharField(max_length=200)
    t_email = models.CharField(max_length=200)
    t_salary =models.IntegerField()
    t_datejoined = models.DateField()

    def __str__(self):
        return self.t_fname

    class Meta:
        verbose_name_plural = 'Teacher'

class Parent(models.Model):
    p_fname = models.CharField(max_length=200)
    p_lname = models.CharField(max_length=200)
    p_contact = models.IntegerField()
    p_email = models.CharField(max_length=200)
    stu = models.ForeignKey(Student, on_delete=models.CASCADE)

   
    def __str__(self):
        return self.p_fname

    class Meta:
        verbose_name_plural = 'Parent'

class NonTeacher(models.Model):
    n_fname = models.CharField(max_length=200)
    n_lname = models.CharField(max_length=200)
    n_position = models.CharField(max_length=200)
    n_email = models.CharField(max_length=200)
    n_salary =models.IntegerField()
    n_datejoined = models.DateField()
    

    def __str__(self):
        return self.n_fname

    class Meta:
        verbose_name_plural = 'NonTeacher'

 
class Course(models.Model):
    c_name = models.CharField(max_length=200)
    c_duration = models.CharField(max_length=20)
    teach= models.ForeignKey(Teacher, on_delete=models.CASCADE)

    def __str__(self):
        return self.c_name

    class Meta:
        verbose_name_plural = 'Course'

class Fees(models.Model):
    f_fname = models.CharField(max_length=200)
    f_lname = models.CharField(max_length=200)
    f_class = models.CharField(max_length=50)
    f_amt = models.IntegerField()
    f_stu_id = models.ForeignKey(Student, on_delete=models.CASCADE)

    def __str__(self):
        return self.f_fname
    
    class Meta:
        verbose_name_plural = 'Fees'



    

