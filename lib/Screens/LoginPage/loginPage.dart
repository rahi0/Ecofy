import 'package:ecofy/Forms/LogInForm/loginForm.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                

                /////////////// card start /////////////////////
                Container(
                            height: MediaQuery.of(context).size.width/2,
                            width: MediaQuery.of(context).size.width/1.9,
                           // color: Colors.red,
                          child: Image.asset(
                            'assets/img/logo.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                /////////////// card End //////////////////////
                

                ///////////////////Paint //////////////////
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            child: Stack(
                              children: <Widget>[
                                Container(
                                   width: MediaQuery.of(context).size.width,
                                   height: double.infinity,
                                 // color: Colors.red,
                                  child: CustomPaint(
                                    painter: CurvePainter(),
                                  ),
                                ),


                                //////////// Form ///////////////
                                LogInForm()
                                //////////// Form ///////////////
                              ],
                            ),
                          ),
                          /////////////////Paint//////////////////
              ],
            ),
          ),
        ),
    );
  }
}






class CirclePainter extends CustomPainter {
  //final Paint lightBluePaint = Paint()..color = Color(0xFFbde5fa);

  final Gradient gradient = new LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomCenter,
      colors: <Color>[
        
        Colors.green,
        //Color(0xFF3AC53F),
        Colors.lightGreen[400],
      ],
      // stops: [
      //   0.4,
      //   0.7,
      //   1.0,
      // ],
    );
    
  final Paint bluePaint = Paint()..color = Colors.green.shade400;

  @override
  void paint(Canvas canvas, Size size) {
    var rect = Rect.fromLTRB(-90, size.height - 80, size.width * 1.2, size.height + 100);

    final Path circle = Path()..addOval(rect);
    final Paint gpaint = new Paint()..shader = gradient.createShader(rect);
    canvas.drawPath(circle, gpaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}



class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[800];
    paint.style = PaintingStyle.fill; // Change this to fill

  
    var path = Path();

    path.moveTo(0, size.height * 0.15);
    path.quadraticBezierTo(size.width /2 , 0, size.width , size.height * 0.15);
    // path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
    //     size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    
    

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}