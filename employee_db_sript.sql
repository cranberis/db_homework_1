CREATE TABLE department (
	id serial PRIMARY KEY,
	department_name varchar(40) NOT NULL
);

CREATE TABLE employee (
	id serial PRIMARY KEY,
	department_id int REFERENCES department(id) NOT NULL,
	head_id int REFERENCES employee(id) NULL
);
