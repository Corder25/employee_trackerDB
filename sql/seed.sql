USE employee_trackerDB;

INSERT INTO department (name)
VALUES ("Sales");
INSERT INTO department (name)
VALUES ("Engineering");
INSERT INTO department (name)
VALUES ("Technology");
INSERT INTO department (name)
VALUES ("Medical");

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Supervisor", 100000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Lead Engineer", 150000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Full Stack Developer", 115000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Junior Developer", 55000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Registered Nurse", 75000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Cameron", "Corder", 1, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jevin", "Griffin", 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Brian", "Sonntag", 3, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Taylor", "Kirk", 4, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Tori", "Denny", 5, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Sarah", "Cooper", 2, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Josh", "Hanny", 4, 7);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Andrew", "Lewis", 1, 2);