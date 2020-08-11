create table employees (
	emp_no integer not null,
	emp_title_id varchar(30) not null,
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(30) not null,
	hire_date date not null
	primary_key (emo_no)
);

create table departments (
	dept_no varchar(30) not null,
	dept_name varchar(30) not null
	primary key (dept_no)
);

create table dept_emp (
	emp_no integer not null,
	dept_no varchar(30) not null,
	foreign key (emp_no) references employees(emp_no)
	foreign key (dept_no) references departments(dept_no)
);

create table dept_manager (
	dept_no varchar(30) not null,
	emp_no integer not null,
	foreign key (dept_no) references departments(dept_no)
	foreign key (emp_no) references employees(emp_no)
);

create table titles (
	title_id varchar(30) not null,
	title varchar(30) not null,
	foreign key (title_id) references employees(emp_title_id)
);

create table salaries (
	emp_no integer not null,
	salary integer not null,
	foreign key (emp_no) references employees(emp_no)
);

