import 'package:ecofy/customWidget/customNavigation/customNavigation.dart';
import 'package:ecofy/customWidget/routeTransition/routeAnimation.dart';
import 'package:flutter/material.dart';

class LogInForm extends StatefulWidget {
  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  bool checkBoxValue = false;

  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _showMsg(msg) {
    //
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: "Close",
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  Container textFieldCon(String hint, TextEditingController controller,
      bool boool, TextInputType tit) {
    return Container(
      // color: Colors.blue,
      margin: EdgeInsets.only(bottom: 20),
      height: 35,
      child: TextField(
        style: TextStyle(
          color: Colors.white,
          fontSize: 19.0,
          fontWeight: FontWeight.w500,
        ),
        cursorColor: Color(0xFF9b9b9b),
        controller: controller,
        keyboardType: tit,
        obscureText: boool,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintText: hint,
          hintStyle: TextStyle(
            color: Color(0XFFC6C6C6),
            fontSize: 18.0,
            decoration: TextDecoration.none,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 20, right: 20, top: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: Text(
              'Enter to ECofy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          textFieldCon("Enter Email", idController, false, TextInputType.emailAddress),
          textFieldCon("Enter Password", passwordController, true, TextInputType.text),

          ///////////////////////// Remember Forgot Start /////////////////
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ///////////////////// Remember ///////////////
                Container(
                  //color: Colors.red,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        //color: Colors.red,
                        child: new Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: checkBoxValue,
                            activeColor: Colors.blue,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValue = newValue;
                              });
                            }),
                      ),
                      Container(
                          //color: Colors.blue,
                          //padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                        'Remember Password',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ))
                    ],
                  ),
                ),
                ///////////////////// Remember End ///////////////
                Text(
                  '|',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                ///////////////////// Forgot button Start ///////////////
                GestureDetector(
                    onTap: () {
                      //_launchURL();
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                ///////////////////// Forgot Button End ///////////////
              ],
            ),
          ),
          ///////////////////////// Remember Forgot End //////////////////

          ///////////////// Login Button  Start///////////////
          Container(
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  color: Colors.white),
              width: MediaQuery.of(context).size.width / 2,
              height: 45,
              child: FlatButton(
                onPressed: _handleLogin,
                child: Container(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                color: Colors.transparent,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50)),
              )),
          ///////////////// Login Button  End///////////////
        ],
      ),
    );
  }

  void _handleLogin() async {
    if (idController.text.isEmpty) {
      return _showMsg("Email is empty");
    } else if (passwordController.text.isEmpty) {
      return _showMsg("Password is empty");
    }
    // else if (!checkBoxValue) {
    //   return _showMsg("Please accept the privacy policy");
    // }
    // give all logic to check if input has desired values or not...
    var data = {
      'mobile': idController.text,
      'password': passwordController.text
    };

    Navigator.push(context, SlideLeftRoute(page: NavigationBarr()));
  }
}
