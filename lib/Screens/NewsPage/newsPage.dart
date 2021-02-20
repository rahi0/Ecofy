import 'package:ecofy/customWidget/routeTransition/routeAnimation.dart';
import 'package:flutter/material.dart';

import 'newsDetailsPage.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        child: ListView.builder(
                        itemCount: 7,
                        //scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                        return  NewsCard();
                        }
                      ),
      ),
    );
  }
}











class NewsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, SlideLeftRoute(page: NewsDetailsPage()));
      },
          child: Container(
        margin: EdgeInsets.only(top: 15),
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 10, right: 10),
        //color: Colors.red,
        //constraints: new BoxConstraints.expand(height: 250.0, width: 352),
        // decoration: BoxDecoration(color: Colors.white),
        //width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /////////Top///////
            
            Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            padding:
                                      EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                            //height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6.0),
                                    topRight: Radius.circular(6.0))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    "EVENT",
                                    //'EVENT',
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17.0,
                                      decoration: TextDecoration.none,
                                      fontFamily: 'BebasNeue',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Container(
                                  padding:EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    '17 April 2020',
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14.0,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'BebasNeue',
                                  fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                )
                              ],
                            ),
                          ),
            ////////Top End//////
            Container(
              //constraints: BoxConstraints.expand(height: 146.0, width: 352),
              width: MediaQuery.of(context).size.width,
              height: 146,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/newss.jpg'),
                  // colorFilter: new ColorFilter.mode(
                  //     Colors.black.withOpacity(0.4), BlendMode.darken),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              //constraints: BoxConstraints.expand(height: 104.0, width: 352),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  color: Colors.white
                  ),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                     child: Container(
                      //height: 104,
                      //width: MediaQuery.of(context).size.width,
                      //color: Colors.red,
                      padding: EdgeInsets.only(top: 15, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Explained | Going green? Does offsetting carbon emissions count?',
                              maxLines: 2,
                              textDirection: TextDirection.ltr,
                              overflow: TextOverflow.ellipsis,
                              //textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                decoration: TextDecoration.none,
                                fontFamily: 'BebasNeue',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                               'Carbon offsetting allows a country to help reach its own emissions reduction targets by funding emission reductions in another country. Companies are also increasingly using carbon credits to offset their ',
                              maxLines: 1,
                              textDirection: TextDirection.ltr,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                decoration: TextDecoration.none,
                                fontFamily: 'BebasNeue',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
