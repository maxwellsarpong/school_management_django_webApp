# Generated by Django 3.0.5 on 2020-04-22 14:38

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('school', '0004_auto_20200421_0933'),
    ]

    operations = [
        migrations.CreateModel(
            name='Fees',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('f_fname', models.CharField(max_length=200)),
                ('f_lname', models.CharField(max_length=200)),
                ('f_class', models.CharField(max_length=50)),
                ('f_amt', models.IntegerField()),
                ('f_stu', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='school.Student')),
            ],
            options={
                'verbose_name_plural': 'Fees',
            },
        ),
    ]