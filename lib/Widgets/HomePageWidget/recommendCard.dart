import 'package:ecofy/Screens/ItemDetailsPage/itemDetailsPage.dart';
import 'package:ecofy/customWidget/routeTransition/routeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart'; 
class ReccomendationCard extends StatefulWidget {
  @override
  _ReccomendationCardState createState() => _ReccomendationCardState();
}

class _ReccomendationCardState extends State<ReccomendationCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push( context, FadeRoute(page: ItemDetailsPage()));
      },
      child: Container(
        height: MediaQuery.of(context).size.width / 2.4,
        width: MediaQuery.of(context).size.width / 2.4,
        margin: EdgeInsets.only(right: 10, left: 10),
        color: Colors.grey[400],
        child: Column(
          children: <Widget>[
            Container(
             // color: Colors.red,
              height: (MediaQuery.of(context).size.width / 2.4)/1.8,
              width: MediaQuery.of(context).size.width / 2.4,
              child: Image.asset(
                            'assets/img/car.jpg',
                            fit: BoxFit.contain,
                          ),
            ),

            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width / 2.4,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                            child: Text(
                               'Fiesta',
                               overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                ),
                            ),
                          ),

                          //////////////////////////
                      Container(
                        child: Row(
                          children: <Widget>[

                            Expanded(
                              child: SmoothStarRating(
                                  allowHalfRating: false,
                                    onRatingChanged: null,
                                    starCount: 5,
                                    rating: 4.5,//widget.item.avgRating.averageRating,
                                    size: 18.0,
                                    color: Colors.orange[600],
                                    borderColor: Color(0xFF606060),
                                    spacing:0.0
                                  ),
                            ),
                            Container(
                                  child: Text(
                                     '180 g/km',
                                     overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  ),
                                ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
