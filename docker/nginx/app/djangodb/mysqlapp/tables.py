import django_tables2 as tables

class EmployeesTable(tables.Table):
    class Meta:
        model = Employees

