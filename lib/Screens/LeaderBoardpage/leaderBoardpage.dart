import 'package:ecofy/Screens/NewsPage/newsPage.dart';
import 'package:flutter/material.dart';


class LeaderBoardpage extends StatefulWidget {
  @override
  _LeaderBoardpageState createState() => _LeaderBoardpageState();
}

class _LeaderBoardpageState extends State<LeaderBoardpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: <Widget>[
              Container(
                child: Column(
              children: <Widget>[
                // top image section
                Container(
                  alignment: Alignment.bottomLeft,
                  height: MediaQuery.of(context).size.height/3.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                     gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                                colors: <Color>[
                                  
                                  Colors.green[700],
                                  Colors.green[600],
                                  //Color(0xFF3AC53F),
                                  Colors.lightGreen,
                                  Colors.lightGreen[400],
                                ],
                              ),
                    // image: DecorationImage(
                    //   image:  AssetImage('assets/img/car.jpg'),
                    //   colorFilter: new ColorFilter.mode(
                    //       Colors.black.withOpacity(0.3), BlendMode.darken),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Image.asset(
                          "assets/img/rank.png",
                          fit: BoxFit.cover,
                          ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.width/5,
                            width: MediaQuery.of(context).size.width/5,
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              shape: BoxShape.circle
                            ),
                            //padding: EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                              Text(
                                           '53',
                                           textDirection:
                                               TextDirection.ltr,
                                           textAlign: TextAlign.left,
                                           style: TextStyle(
                                             color: Colors.green,
                                             letterSpacing: 2,
                                             fontSize: 24.0,
                                             decoration:
                                                 TextDecoration.none,
                                             fontFamily: 'BebasNeue',
                                             fontWeight: FontWeight.bold,
                                           ),
                                         ),

                                        Container(
                                          height: 1,
                                          width: MediaQuery.of(context).size.width/6,
                                          color: Colors.black,),
                                  
                                  Text(
                                           '553',
                                           textDirection:
                                               TextDirection.ltr,
                                           textAlign: TextAlign.left,
                                           style: TextStyle(
                                             letterSpacing: 2,
                                             color: Colors.green,
                                             fontSize: 20.0,
                                             decoration:
                                                 TextDecoration.none,
                                             fontFamily: 'BebasNeue',
                                             fontWeight: FontWeight.bold,
                                           ),
                                         ),
                            ],),
                          ),

                          Container(
                            child: Text(
                                             'Your Rank',
                                             textDirection:
                                                 TextDirection.ltr,
                                             textAlign: TextAlign.left,
                                             style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 20.0,
                                               letterSpacing: 2,
                                               fontWeight: FontWeight.bold,
                                             ),
                                           ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                ///////////////////////// List //////////////////
                Expanded(
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                        itemCount: 13,
                        //scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {

                          ////////////// ListCard Start ///////////////////
                          
                          return Container(
                              padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                  color: index % 2 == 0 ? Colors.white : Colors.grey[200],
                                  //borderRadius: BorderRadius.circular(6.0)
                                  ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                          alignment: Alignment.topLeft,
                                          //margin: EdgeInsets.only(bottom: 1.0),
                                          child: ClipOval(
                                            child:  Icon(Icons.account_circle, color: Colors.grey, size: 50)
                                          ),
                                        ),
                                    

                                    Expanded(
                                    child: Container(
                                      //width: 86,
                                      //color: Colors.red,
                                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'User ${index + 1}',
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'BebasNeue',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.only(top: 0, right: 15),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '${index + 1}',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 23.0,
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),

                                  Container(
                                          alignment: Alignment.topLeft,
                                          //margin: EdgeInsets.only(bottom: 1.0),
                                          child: Image.asset(
                                                  index  <= 2 ? 'assets/img/cup.png' : 'assets/img/cup2.png',
                                                  height:  30,
                                                  width:  30,
                                                  fit: BoxFit.cover,
                                                ),
                                        ),

                                  
                                  
                                ],
                              ),
                            );
                          ////////////// ListCard End ///////////////////
                        }
                      ),
                  ),
                ),
              ],
                ),
              ),



              ////////////////////// Back Button
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
        );
  }
}











///////////Standings////////////////

class PlayerCards extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
      decoration: BoxDecoration(
          color: Colors.grey[900],
          //borderRadius: BorderRadius.circular(6.0)
          ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
                  alignment: Alignment.topLeft,
                  //margin: EdgeInsets.only(bottom: 1.0),
                  child: ClipOval(
                    child:  Icon(Icons.account_circle, color: Colors.grey, size: 50)
                  ),
                ),
            

            Expanded(
            child: Container(
              //width: 86,
              //color: Colors.red,
              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
              alignment: Alignment.centerLeft,
              child: Text(
                'User Name',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  decoration: TextDecoration.none,
                  fontFamily: 'BebasNeue',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 0, right: 10),
            alignment: Alignment.center,
            child: Text(
              '1',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                fontSize: 23.0,
                decoration: TextDecoration.none,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),

          Container(
                  alignment: Alignment.topLeft,
                  //margin: EdgeInsets.only(bottom: 1.0),
                  child: Image.asset(
                          'assets/img/cup.png',
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                ),

          
          
        ],
      ),
    );
  }
}

///////////////Standings End//////////////