import 'package:ecofy/Screens/LoginPage/loginPage.dart';
import 'package:ecofy/customWidget/customNavigation/customNavigation.dart';
import 'package:ecofy/customWidget/routeTransition/routeAnimation.dart';
import 'package:flutter/material.dart';


class SpalshScreen extends StatefulWidget {
  @override
  _SpalshScreenState createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {


  @override
  void initState() {
   route();
    super.initState();
  }


  void route() async{
     await Future.delayed(new Duration(seconds: 2));
          Navigator.push( context, FadeRoute(page: LoginPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ////////////////////// Background Start ///////////////
              Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height,
                 decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                          colors: <Color>[
                            
                            Colors.green[700],
                            Colors.green[600],
                            //Color(0xFF3AC53F),
                            Colors.lightGreen,
                            Colors.lightGreen[400],
                          ],
                          // stops: [
                          //   0.5,
                          //   1.0,
                          // ],
                        )
                  ),
              ),
              ////////////////////// Background Start ///////////////
              

              /////////////// card start /////////////////////
              Container(
                          height: MediaQuery.of(context).size.width/1.7,
                          width: MediaQuery.of(context).size.width/1.6,
                          //color: Colors.red,
                        child: Image.asset(
                          'assets/img/logo.png',
                          color: Colors.white,
                          fit: BoxFit.contain,
                        ),
                      )
              /////////////// card End //////////////////////
            ],
          ),
        ),
    );
  }
}