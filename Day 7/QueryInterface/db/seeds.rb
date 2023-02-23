# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Client.create(name:"Nouman", orders_count:100, looked:true)
Client.create(name:"Shah", orders_count:150, looked:false)
Client.create(name:"Hammad", orders_count:50, looked:false)
Client.create(name:"Faheem", orders_count:10, looked:true)
Client.create(name:"Asim", orders_count:10, looked:true)
Client.create(name:"Umair", orders_count:1000, looked:true)

c1= Client.find(1)
c2= Client.find(2)
c3= Client.find(3)
c4= Client.find(4)
c5= Client.find(5)
c6= Client.find(6)

c1.create_address(postcode:"1231" )

Address.create(postcode:1235, client_id:6)
Address.create(postcode:1235, client_id:5)
Address.create(postcode:1234, client_id:4)
Address.create(postcode:1233, client_id:3)
Address.create(postcode:1232, client_id:2)


c1.orders.create(status:true)
c2.orders.create(status:true)
c3.orders.create(status:true)
c4.orders.create(status:false)
c5.orders.create(status:false)
c6.orders.create(status:true)


u1 = User.create(name:"Nouman", job_title:"ASE")
u2 = User.create(name:"Shah", job_title:"Senior Manager")
u3 = User.create(name:"Sergei", job_title:"Manager")
u4 = User.create(name:"John", job_title:"client")
u5 = User.create(name:"mike", job_title:"seller")

u1.products.create(name: "Laptop", price: 50000)
u1.products.create(name: "Charger", price: 500)
u2.products.create(name: "Glass", price: 200)
u3.products.create(name: "IPad", price: 30000)
u4.products.create(name: "Iphone", price: 400000)
u5.products.create(name: "mouse", price: 1000)

Dept.create!(deptno: 10, dname: "ACCOUNTING", loc: "NEW YORK")
Dept.create!(deptno: 20, dname: "RESEARCH", loc: "DALLAS")
Dept.create!(deptno: 30, dname: "SALES", loc: "CHICAGO")
Dept.create!(deptno: 40, dname: "OPERATIONS", loc: "BOSTON")
Dept.create!(deptno: 50, dname: "RESEARCH", loc: "ISLAMABAD")

Emp.create!(  empno: 7566, ename: "JONES", job: "MANAGER",    mgr: 7839, hiredate: Date.parse('2-APR-1981'),  sal:2975 ,  deptno: 20 )
Emp.create!(  empno: 7521, ename: "WARD", job: "SALESMAN",    mgr: 7698, hiredate: Date.parse('22-FEB-1981'), sal:1250 , comm:500 , deptno: 30 )
Emp.create!(  empno: 7499, ename: "ALLEN", job: "SALESMAN",   mgr: 7698, hiredate: Date.parse('20-FEB-1981'), sal:1600,  comm:300  ,deptno: 30 )
Emp.create!(  empno: 7369, ename: "SMITH", job: "CLERK",      mgr: 7902, hiredate: Date.parse('17-DEC-1980'), sal:800,  deptno: 20 )
Emp.create!(  empno: 7654, ename: 'MARTIN', job: 'SALESMAN',  mgr: 7698, hiredate: Date.parse('28-SEP-1981'), sal:1250,  comm:1400, deptno: 30 )
Emp.create!(  empno: 7698, ename: 'BLAKE',  job: 'MANAGER',   mgr: 7839, hiredate: Date.parse('1-MAY-1981'),  sal: 2850,  deptno: 30 )
Emp.create!(  empno: 7782, ename: 'CLARK',  job: 'MANAGER',   mgr: 7839, hiredate: Date.parse('9-JUN-1981'),  sal: 2450,  deptno: 10 )
Emp.create!(  empno: 7788, ename: 'SCOTT',  job: 'ANALYST',   mgr: 7566, hiredate: Date.parse('09-DEC-1982'), sal:3000,  deptno: 20 )
Emp.create!(  empno: 7839, ename: 'KING',   job: 'PRESIDENT',            hiredate: Date.parse('17-NOV-1981'), sal:5000,  deptno: 10 )
Emp.create!(  empno: 7844, ename: 'TURNER', job: 'SALESMAN',  mgr: 7698, hiredate: Date.parse('8-SEP-1981'),  sal: 1500, comm:0, deptno: 30 )
Emp.create!(  empno: 7876, ename: 'ADAMS',  job: 'CLERK',     mgr: 7788, hiredate: Date.parse('12-JAN-1983'), sal:1100,  deptno: 20 )
Emp.create!(  empno: 7900, ename: 'JAMES',  job: 'CLERK',     mgr: 7698, hiredate: Date.parse('3-DEC-1981'),  sal: 950,  deptno: 30 )
Emp.create!(  empno: 7902, ename: 'FORD',   job: 'ANALYST',   mgr: 7566, hiredate: Date.parse('3-DEC-1981'),  sal: 3000,  deptno: 20 )
Emp.create!(  empno: 7934, ename: 'MILLER', job: 'CLERK',     mgr: 7782, hiredate: Date.parse('23-JAN-1982'), deptno: 50 )


dev =Company.create(name:"Devsinc",verified:true )
mic =Company.create(name:"Microsoft",verified:false )
google =Company.create(name:"google",verified:true )
daraz =Company.create(name:"daraz",verified:true )
Hub4u =Company.create(name:"Hub4u",verified:false )

dev.employees.create(name:"Nouman",status:"active")
dev.employees.create(name:"Shah",status:"inactive")
mic.employees.create(name:"Salman",status:"active")
mic.employees.create(name:"Hammad",status:"inactive")
google.employees.create(name:"Fatima",status:"active")
daraz.employees.create(name:"Zobia",status:"inactive")
Hub4u.employees.create(name:"ARfa",status:"active")

dev.locations.create(state:'CA', country:"USA")
dev.locations.create(state:'Punjab', country:"PAK")
google.locations.create(state:'LA', country:"USA")
google.locations.create(state:'Punjab', country:"PAK")


5.times do |i|
  article = Article.create(title:"Article#{i}", text:"Article#{i} text")
  article.comments.create(commenter:"name#{i}", body:"comment body #{i}")
  article.comments.create(commenter:"name#{i+1}", body:"comment body #{i+1}")
end
