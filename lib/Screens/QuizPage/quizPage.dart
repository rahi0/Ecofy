import 'package:ecofy/Screens/QuizPage/QuizQuestionPage.dart';
import 'package:ecofy/customWidget/routeTransition/routeAnimation.dart';
import 'package:flutter/material.dart';


class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
                                'assets/img/instructions.png',
                                fit: BoxFit.cover,
                              ),
          ),

          //////////////////
          ///
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ////////////////////// Back Button ///////////////
              Row(
                children: <Widget>[
                  Container(
                          margin: EdgeInsets.only(left: 15.0, top: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: GestureDetector(
                           child: Icon(Icons.keyboard_arrow_left, size: 40,color: Colors.green,),
                           onTap: (){
                             Navigator.pop(context);
                           })
                          ),
                ],
              ),
              ////////////////////// Back Button ///////////////
              

              ///////////////// Unsubscribe Button  Start///////////////
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white
                      ),
                      width: MediaQuery.of(context).size.width/2,
                      height: 45,
                      child: FlatButton(
                        onPressed: (){
                          Navigator.push( context, SlideLeftRoute(page: QuizQuestionPage()));
                        },

                        child: Container(
                          //padding: EdgeInsets.only(left: 30, right: 30),
                          child: Text(
                             'Start',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                          ),
                        ),
                        color: Colors.transparent,
                        //elevation: 4.0,
                        //splashColor: Colors.blueGrey,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)),
                      )),
                       ///////////////// Unsubscribe Button  End///////////////
              ],
            )
          ),
        ],
      ),
    );
  }
}