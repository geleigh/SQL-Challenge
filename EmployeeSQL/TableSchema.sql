CREATE TABLE "employees" (
    "emp_no" integer   NOT NULL Primary Key,
    "birth_date" varchar   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "gender" varchar   NOT NULL,
    "hire_date" varchar   NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" varchar   NOT NULL Primary Key,
    "dept_name" varchar   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar   NOT NULL, FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no"),
    "emp_no" integer   NOT NULL, FOREIGN KEY("emp_no")REFERENCES "employees" ("emp_no"),
    "from_date" varchar   NOT NULL,
    "to_date" varchar   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" integer   NOT NULL, FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no"),
    "dept_no" varchar   NOT NULL, FOREIGN KEY("dept_no") REFERENCES "departments" ("dept_no"),
    "from_date" varchar   NOT NULL,
    "to_date" varchar   NOT NULL
);


CREATE TABLE "salaries" (
    "emp_no" integer   NOT NULL, FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no"),
    "salary" integer   NOT NULL,
    "from_date" varchar   NOT NULL,
    "to_date" varchar   NOT NULL
);

CREATE TABLE "titles" (
    "emp_no" integer   NOT NULL, FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no"),
    "title" varchar   NOT NULL,
    "from_date" varchar   NOT NULL,
    "to_date" varchar   NOT NULL
);