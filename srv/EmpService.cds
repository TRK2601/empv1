using { emp.social as mymodel } from '../db/schema';

@path: 'srv/EmployeeService'

service EmployeeService {

    entity EmployeeHeaderSet as projection on mymodel.Employee;

    entity EmployeeProjectSet as projection on mymodel.EmpProject;

    entity EmployeeSkillSet as projection on mymodel.EmpSkill;

    entity EmployeeBlogSet as projection on mymodel.EmpBlog;

    entity EmployeeCertificationSet as projection on mymodel.EmpCertification;

    entity UsefulLinkSet as projection on mymodel.UsefulLink;

}