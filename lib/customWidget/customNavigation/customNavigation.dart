import 'package:ecofy/Screens/HomePage/homaepage.dart';
import 'package:ecofy/Widgets/HomePageWidget/drawerWidget.dart';
import 'package:flutter/material.dart';

class NavigationBarr extends StatefulWidget {
  
  @override
  _NavigationBarrState createState() => _NavigationBarrState();
}

class _NavigationBarrState extends State<NavigationBarr> {


  Container _navButton( String txt, Icon icons){
    return Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                icons,
                                Container(
                                  child: new Text(
                                    txt,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
         children: <Widget>[


           Homepage(),

           /////////////////////////////// Bottom Nav ///////////////////////////
           Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        ///////////////////Paint //////////////////
                        Container(
                          width: double.infinity,
                          height: 100,
                          //color: Colors.red,
                          child: CustomPaint(
                            painter: CirclePainter(),
                          ),
                        ),
                        /////////////////Paint//////////////////
                        

                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          padding: EdgeInsets.only( bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[

                              Expanded(
                                child: _navButton("News", Icon(Icons.web, color: Colors.white, size: 30,),)
                                ),

                              Expanded(child: _navButton("Leaderboard", Icon(Icons.equalizer, color: Colors.white, size: 30,),)),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[

                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(color: Colors.green.shade400, width: 3)
                                      ),
                                      child: Icon(Icons.tablet_mac, color: Colors.green.shade400,),
                                    ),


                                    Container(
                                     // color: Colors.red,
                                            child: new Text(
                                              'Calculator',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                  ],
                                ),
                              ),
                              Expanded(child: _navButton("Quiz", Icon(Icons.chat_bubble_outline, color: Colors.white, size: 30,),)),
                               Expanded(child: _navButton("Donate", Icon(Icons.wifi, color: Colors.white, size: 30,),)),

                          
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )),

                /////////////////////////////// Bottom Nav end///////////////////////////
         ],
       ),
      
    );
  }
}




///////////////////////


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
   
  // final TextPainter textPainter = TextPainter(
  //   textDirection: TextDirection.ltr,
  // );

  // final TextStyle textStyle = TextStyle(
  //     color: Colors.white.withAlpha(240),
  //     fontSize: 18,
  //     letterSpacing: 1.2,
  //     fontWeight: FontWeight.w900);

  @override
  void paint(Canvas canvas, Size size) {
    var rect = Rect.fromLTRB(
        -90, size.height - 80, size.width * 1.2, size.height + 100);

    final Path circle = Path()..addOval(rect);
    final Paint gpaint = new Paint()..shader = gradient.createShader(rect);
    //final Path smallCircle = Path()..addOval(rect.inflate(50));

   // canvas.drawPath(smallCircle, lightBluePaint);
    canvas.drawPath(circle, gpaint);

    //drawText(canvas, size, 'Write now');
  }

  // void drawText(Canvas canvas, Size size, String text) {
  //   textPainter.text = TextSpan(style: textStyle, text: text);
  //   textPainter.layout();
  //   textPainter.paint(canvas, Offset(50, size.height - 60)
  //   );
  // }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}