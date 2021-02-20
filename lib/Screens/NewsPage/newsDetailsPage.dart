import 'package:flutter/material.dart';

class NewsDetailsPage extends StatefulWidget {
  @override
  _NewsDetailsPageState createState() => _NewsDetailsPageState();
}

class _NewsDetailsPageState extends State<NewsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: <Widget>[

              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                  child: Container(
                child: Column(
                  children: <Widget>[
                    // top image section
                    Container(
                      alignment: Alignment.topLeft,
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:  AssetImage('assets/img/newss.jpg'),
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.3), BlendMode.darken),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Text('Food Paradise'),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 20.0, bottom: 0.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  //color: Colors.yellow,
                                  alignment: Alignment.centerLeft,
                                  //padding: EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                       // color: Colors.blue,
                                       padding: EdgeInsets.fromLTRB(0,3,0,3),
                                       alignment: Alignment.centerLeft,
                                       child: Text(
                                         'Explained | Going green? Does offsetting carbon emissions count?',
                                         textDirection:
                                             TextDirection.ltr,
                                         textAlign: TextAlign.left,
                                         style: TextStyle(
                                           color: Colors.black,
                                           fontSize: 20.0,
                                           decoration:
                                               TextDecoration.none,
                                           fontFamily: 'BebasNeue',
                                           fontWeight: FontWeight.normal,
                                         ),
                                       ),
                                        ),

                                      Container(
                                        padding: EdgeInsets.fromLTRB(0,3,0,3),
                                        child: Text(
                                          'LONDON, NOVEMBER 27, 2019 12:52 IST',
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            fontFamily: 'Lato',
                                            fontSize: 14.0,
                                            decoration: TextDecoration.none,
                                            //fontFamily: 'PermanentMarker',
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                          Container(
                            height: 0.5,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.grey[600],
                            //padding: EdgeInsets.only(left: 30.0, right: 30.0),
                            margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          ),

                          Container(
                            //color: Colors.red,
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(0,3,0,3),
                            //padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
                            child: Text(
                              'Carbon offsetting allows a country to help reach its own emissions reduction targets by funding emission reductions in another country. Companies are also increasingly using carbon credits to offset their emissions. The first major offsetting scheme, the U.N.s clean development mechanism (CDM), was set up under the 1997 Kyoto Protocol, in which 190 countries agreed country-by-country emission reduction targets. The scheme was designed to help fund emission reduction projects in developing countries, while also providing offset credits to the developed world to help meet its Kyoto targets. Negotiators in Madrid are set to discuss what kind of offsets, if any, should be used to meet the targets set out in the 2015 Paris agreement and how they should ',
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  fontSize: 15.0,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  height: 1.6,
                                  wordSpacing: 2),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              )),



             ////////////////////// Back Button
              Container(
                      margin: EdgeInsets.only(left: 15.0, top: 20),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
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