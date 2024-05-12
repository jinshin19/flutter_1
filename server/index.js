const express = require("express");
const cors = require("cors");

const mock_data = [
  {
    id: "1",
    name: "John Doe",
    age: "24",
  },
  {
    id: "2",
    name: "Bruce Wayne",
    age: "24",
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

app.get("/users/:id", (request, response) => {
  const { id } = request.params;

  const user = mock_data.find((u) => u.id == id);

  return response.status(200).send({
    data: user,
  });
});
