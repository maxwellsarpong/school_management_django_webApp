from django.contrib import admin
from .models import Student, Teacher, Parent, NonTeacher, Course,Fees

# Register your models here.
admin.site.register(Student)
admin.site.register(Teacher)
admin.site.register(Parent)
admin.site.register(NonTeacher)
admin.site.register(Course)
admin.site.register(Fees)
admin.site.site_header='SCHOOL MANAGEMENT SYSTEM'
admin.site.site_title='SCHOOL MANAGEMENT SYSTEM'
admin.site.index_title='SCHOOL MANAGEMENT SYSTEM'


