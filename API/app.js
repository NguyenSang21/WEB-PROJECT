var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var cors = require('cors');

var index = require('./routes/index');
var users = require('./routes/users');

var userModel = require('./models/user');
var products = require('./routes/products');
var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(cors());


//////////////////////////////xử lý người dùng đăng nhập/////////////////////////
/////////////////////////////////////////////////////////////////////////////////
var jwt = require('jsonwebtoken');
var passport = require("passport");
var passportJWT = require("passport-jwt");

var ExtractJwt = passportJWT.ExtractJwt;
var JwtStrategy = passportJWT.Strategy;

var jwtOptions = {}
jwtOptions.jwtFromRequest = ExtractJwt.fromAuthHeaderAsBearerToken();
jwtOptions.secretOrKey = 'tasmanianDevil123';

var strategy = new JwtStrategy(jwtOptions, function (jwt_payload, next) {
    console.log('payload received', jwt_payload);
    next(null, jwt_payload)
    // usually this would be a database call:
    // var user = users[_.findIndex(users, {id: jwt_payload.id})];
    // if (user) {
    //     next(null, user);
    // } else {
    //     next(null, false);
    // }
});

passport.use(strategy);

app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

app.post('/login', function (req, res) {
  if (req.body.name && req.body.password) {
      var name = req.body.name;
      var password = req.body.password;
  }

  // usually this would be a database call:
  //var user = users[_.findIndex(users, {name: name})];
  userModel.findUsername(name, function (err, data) {
        if (err) {
            res.status(400).send(err);
            return;
        }

        if(data[0].Username === name && data[0].Pass === password)
        {
            // from now on we'll identify the user by the id and the id is the only personalized value that goes into our token
            var payload = {id: data[0].idNGDUNG, name: data[0].Username, role: data[0].Username};
            var token = jwt.sign(payload, jwtOptions.secretOrKey);
            res.json({message: "ok", token: token});
        }
        else
        {
          res.status(401).json({message: "username and password not matched"});
          return;
        }
    }
    );   


  return;
});



app.get("/secret", passport.authenticate('jwt', { session: false }), function(req, res){
  res.json("Success! You can not see this without a token");
});


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////



app.use('/', index);
app.use('/users', users);
app.use('/api', products);
// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
