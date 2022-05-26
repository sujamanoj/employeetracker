const inputCheck = require("./utils/inputCheck");
const mysql = require("mysql2");

const express = require("express");

//adding port designation.

const PORT = process.env.PORT || 3006;
const app = express();

//express middleware
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

//connect to database
const db = mysql.createConnection(
  {
    host: "localhost",
    //mysql username,
    user: "root",
    //mysql password
    password: "Suja1234",
  },
  console.log("connected to the employeetracker database")
);

// Get all employee
app.get("/api/employee", (req, res) => {
  const sql = `SELECT employee.*, companies.name 
  AS companies_name 
  FROM employee
  LEFT JOIN companies
  ON employee.companiesId = companies.id`;

  db.query(sql, (err, rows) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json({
      message: "success",
      data: rows,
    });
  });
});

// Delete a employee
app.delete("/api/employee/:id", (req, res) => {
  const sql = `DELETE FROM employee WHERE id = ?`;
  const params = [req.params.id];

  db.query(sql, params, (err, result) => {
    if (err) {
      res.statusMessage(400).json({ error: res.message });
    } else if (!result.affectedRows) {
      res.json({
        message: "Employee not found",
      });
    } else {
      res.json({
        message: "deleted",
        changes: result.affectedRows,
        id: req.params.id,
      });
    }
  });
});
// Create a employee
app.post("/api/employee", ({ body }, res) => {
  const errors = inputCheck(
    body,
    "firstName",
    "lastName",
    "department",
    "roleId",
    "managerId"
  );
  if (errors) {
    res.status(400).json({ error: errors });
    return;
  }
});

const sql = `INSERT INTO employee (firstName, lastName, department, roleId, managerId)
  VALUES (?,?,?)`;
const params = [
  body.firstName,
  body.lastName,
  body.department,
  body.roleId,
  body.managerId,
];

db.query(sql, params, (err, result) => {
  if (err) {
    res.status(400).json({ error: err.message });
    return;
  }
  res.json({
    message: "success",
    data: body,
  });
});
// Default response for any other request (Not Found)
app.use((req, res) => {
  res.status(404).end();
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
