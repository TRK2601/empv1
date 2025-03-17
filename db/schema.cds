namespace emp.social;
entity Employee{
    key EmpId : String
        @Core.Computed;
    Name : String;
    PhoneNo : String;
    Email : String;
    About : String;
    Picture : String;
    Location : String;
    Role : String;
    Department : String;
    Availability : String;
    Projects : Composition of many EmpProject on Projects.Proj = $self;
    Blogs : Composition of many EmpBlog on Blogs.Blog = $self;
    Skills : Composition of many EmpSkill on Skills.Skill = $self;
    Certifications : Composition of many EmpCertification on Certifications.Certification = $self;
}

entity EmpProject{
    key ID : String;
    Name : String;
    Description : String;
    key Proj : Association to Employee;
}

entity EmpBlog{
    key ID : String;
    Name : String;
    Description : String;
    key Blog : Association to Employee;
}

entity EmpSkill{
    key ID : String;
    Name : String;
    Description : String;
    key Skill : Association to Employee;
}

entity EmpCertification{
    key ID : String;
    Name : String;
    Description : String;
    key Certification : Association to Employee;
}
entity UsefulLink{
    key ID : String;
    Name : String;
    LinkAddress : String;
}

