import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class _LoginViewState extends State<LoginView> {
  _LoginData _data = _LoginData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     // title: Text('Cars Market'),
      //     ),
      body: Container(
          padding: EdgeInsets.only(top: 40.0, left: 40.0, right: 40.0),
          child: new Form(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'images/logo_login.png',
                        width: 150.0,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Color(0xff585858),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(44.0)),
                      hintText: 'Enter Your Email',
                    ),
                    style: TextStyle(
                        fontSize: 16.0, height: .75, color: Color(0xff5B5B5B)),
                    onSaved: (String value) {
                      this._data.email = value;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(44.0)),
                      hintText: 'Enter Your Password',
                    ),
                    style: TextStyle(
                        fontSize: 16.0, height: .75, color: Color(0xff5B5B5B)),
                    onSaved: (String value) {
                      this._data.password = value;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  child: RaisedButton(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {},
                    color: Color(0xff0083D2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(44.0)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        // margin: EdgeInsets.only(right: 1.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(FontAwesomeIcons.facebookF,
                              color: Colors.white),
                          onPressed: () {},
                          color: Color(0xff5F80C9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(22.0),
                            bottomLeft: Radius.circular(22.0),
                          )),
                        ),
                      ),
                      SizedBox(width: 1.0),
                      Expanded(
                        // margin: EdgeInsets.only(right: 1.0),
                        child: RaisedButton(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(FontAwesomeIcons.googlePlusG,
                              color: Colors.white),
                          onPressed: () {},
                          color: Color(0xff88221A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topRight: Radius.circular(22.0),
                            bottomRight: Radius.circular(22.0),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 35.0),
                  child: FlatButton(
                    onPressed: () => Navigator.of(context)
                        .pushReplacementNamed('/RegisterView'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                        ),
                        Text(
                          " SignUp",
                          style: TextStyle(
                              color: Color(0xff0083D2),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
