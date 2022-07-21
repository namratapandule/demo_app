var express = require("express");
var app = express();

var bodyParser = require("body-parser");
process.env.NODE_ENV = !process.env.NODE_ENV
? "development"
: process.env.NODE_ENV;

//initialise express router
var router = express.Router();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.get("/", (req, res) => {
  res.send("Hello Geeks !");
});
  
app.get("/new", (req, res) => {
  res.send("welcome to new page");
});
  
// All the general routes of your
// web app are defined above the
// default route
  
// Default route
app.get("*", (req, res) => {
  
  // Here user can also design an
  // error page and render it 
  res.send("PAGE NOT FOUND");
});
// Error handling
app.use(function(req, res, next) {
  res.setHeader("Access-Control-Allow-Origin", "https://www.bangarbus.com");
  res.setHeader("Access-Control-Allow-Credentials", "true");
  res.setHeader("Access-Control-Allow-Methods", "GET,HEAD,OPTIONS,POST,PUT");
  res.setHeader(
    "Access-Control-Allow-Headers",
    "Access-Control-Allow-Origin,Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers,Authorization"
  );
  next();
});

const port = process.env.PORT || 5000;

app.listen( port, (req, res) => {
  console.log(`Server is running on ${port} port.`);
});



