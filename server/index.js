const express = require("express");
const cors = require("cors");

const mock_data = [
  {
    id: "1",
    name: "Roxie",
    age: 24,
  },
  {
    id: "2",
    name: "Jinshin",
    age: 24,
  },
];

const app = express();
app.listen(5000, () => console.log("Server is running"));

app.use(express.json());
app.use(cors());

app.get("/users", (_, response) => {
  return response.status(200).send({
    data: mock_data,
  });
});
