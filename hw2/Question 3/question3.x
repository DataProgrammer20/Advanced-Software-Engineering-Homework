-- Create and assign attributes
!create employee: Person
!set employee.name := 'John'
!set employee.age := 32

!create company: Company
!set company.name := 'Figure'
!set company.location := 'Bozeman'

-- Insert company and employee
!insert(company, employee) into WorksFor

!set employee.salary := 30000.0

!employee.raiseSalary(1000.0)
!company.fire(employee)

-- Used to test constraints
--!insert(company, employee) into WorksFor