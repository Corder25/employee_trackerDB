const mysql = require("mysql");
const inquirer = require("inquirer");
require("console.table");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "Lakers2424",
  database: "employee_trackerDB"
});

  // connect to the mysql server
  connection.connect(function (err) {
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
 prompt();
});

// function which prompts the user for what action they should take
function prompt() {

  inquirer
    .prompt({
      type: "list",
      name: "task",
      message: "What would you like to do?",
      choices: [
        "View Employees",
        "View Employees by Department",
        "Add Employee",
        "Remove Employees",
        "Update Employee Role",
        "Add Role",
        "End"]
    })
    .then(function ({ task }) {
     switch (task) {
        case "View Employees":
          viewEmployee();
          break;
        case "View Employees by Department":
          employeeByDepartment();
          break;
        case "Add Employee":
          addEmployee();
          break;
        case "Remove Employees":
          removeEmployees();
          break;
        case "Update Employee Role":
          updateEmployeeRole();
          break;
        case "Add Role":
          addRole();
          break;
        case "End":
          connection.end();
          break;
      }
    });
}

