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

// app.get("/", (req, res) => {
//   res.json({
//     message: "HELLO WORLD",
//   });
// });

// Default response for any other request (Not Found)
app.use((req, res) => {
  res.status(404).end();
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
db.query(`SELECT * FROM employeetracker.employee WHERE id = 1`, (err, rows) => {
  console.log(rows);
});
