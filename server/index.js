const express = require("express");
const cors = require("cors");
const mysql = require("mysql2");
const { ulid } = require("ulidx");

const db = mysql.createConnection({
  user: "root",
  password: "localhost123@",
  database: "flutter",
  host: "localhost",
});

const app = express();
app.listen(5000, () => console.log("Server is running"));

app.use(express.json());
app.use(cors());

app.get("/users", (_, response) => {
  db.query("select * from users", "", (err, result) => {
    return response.status(200).send({
      data: result,
    });
  });
});

app.post("/users", async (request, response) => {
  const { name, age } = await request.body;

  const values = [name, age];

  db.query(
    "insert into users (name, age) values (?)",
    [values],
    (err, result) => {
      console.log(err);
      console.log(result);
    }
  );

  return response.status(201).send({
    data: [],
  });
});
