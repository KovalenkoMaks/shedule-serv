const app = require("./App");
const Pool = require('./src/db/db')

Pool.getConnection()
  .then(connection => {
    console.log("Connected to the database");
    connection.release();
  })
  .catch(error => {
    console.error("Error connecting to the database:", error);
    process.exit(1);
  });

app.listen(8080, () => {
  console.log("Server started");
}
)
