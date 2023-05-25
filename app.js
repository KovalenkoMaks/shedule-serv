const express = require("express");
const logger = require("morgan");
const cors = require("cors");

const stationsRouter = require('./src/routes/api/stations')
const trainsRouter = require('./src/routes/api/trains')

const app = express();

const formatsLogger = app.get("env") === "development" ? "dev" : "short";

app.use(logger(formatsLogger));
app.use(cors());
app.use(express.json());
app.use(express.static("public"));

app.use("/api/stations", stationsRouter);
app.use("/api/trains", trainsRouter);

app.use((req, res) => {
  res.status(404).json({ message: "Not found" });
});

app.use((err, req, res, next) => {
  const { status = 500, message = "Server error" } = err;
  res.status(status).json({ message });
});


module.exports = app