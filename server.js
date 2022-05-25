const mysql = require("mysql2");

const express = require("express");

//adding port designation.

const PORT = process.env.PORT || 3006;
const app = express();

//express middleware
app.use(express.urlencoded({ extended: false }));
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
  console.log("connected to the employee database")
);

app.get("/api/employee", (req, res) => {
  const sql = `SELECT * FROM employeetracker.employee`;
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

// Default response for any other request (Not Found)
app.use((req, res) => {
  res.status(404).end();
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
