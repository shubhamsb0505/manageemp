using {  emp.db as emp } from '../db/emp-schema';


service EmployeeService @(path:'/manageemployee'){

   // @readonly entity Employees as projection on emp.Employees;    /// This is only for readonly

    entity Employees as projection on emp.Employees;

}