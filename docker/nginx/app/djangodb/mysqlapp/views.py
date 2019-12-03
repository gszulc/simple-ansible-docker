from django.shortcuts import render


# Create your views here.
from mysqlapp.models import Employees


def showEmployees(request):
    data = Employees.objects.raw('''SELECT * FROM employees WHERE gender = 'M' AND birth_date = '1965-02-01' AND hire_date > '1990-01-01' ORDER BY first_name,last_name''')
    return render(request,'mysqlapp/employees.html',locals())