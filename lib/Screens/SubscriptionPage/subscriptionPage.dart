import 'package:flutter/material.dart';

class SubscriptionPage extends StatefulWidget {
  @override
  _SubscriptionPageState createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {


  Container titleCon(String title){
    return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(bottom: 5, top:5),
                              alignment: Alignment.center,
                            child: Text(
                              title,
                              style: TextStyle(
                              color: Colors.black,
                              //fontFamily: "Poppins",
                              fontSize: 17,
                              fontWeight: FontWeight.normal),
                            ),
                          );
  }



  Container featureCon(String title){
    return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(bottom: 10, top:10),
                            child: Text(
                              title,
                              style: TextStyle(
                              color: Colors.grey,
                              //fontFamily: "Poppins",
                              fontSize: 17,
                              fontWeight: FontWeight.normal),
                            ),
                          );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData( color: Colors.green),
        backgroundColor: Colors.white,
        title: Text(
          'SUBSCRIPTION',
          style: TextStyle(
                                        color: Colors.green,
                                        //fontFamily: "Poppins",
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
           ),
         centerTitle: true,
          actions: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Image.asset("assets/img/logo.png")
                    )
                ],
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(5.0),
                  child: Container(),
                ),
        ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
              padding: EdgeInsets.only( top: 30, left: 20, right: 20, bottom: 40),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[


                  ////////////////////////// title Start //////////////////////
                  Container(
                              width: MediaQuery.of(context).size.width,
                            //  margin: EdgeInsets.only(bottom: 20, top:10),
                            child: Text(
                              "Ecofy Premium Helps You Support the Planet",
                              style: TextStyle(
                              color: Colors.black,
                              //fontFamily: "Poppins",
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                            ),
                          ),
                  ////////////////////////// title End //////////////////////
                  

                  ////////////////////////// subtitle Start //////////////////////
                  Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(bottom: 20, top:20),
                            child: Text(
                              "Subscribing to Ecofy would not only provide you with premium features allowing you to log your exact routes, meals, and purchases, but it would also support reforestation efforts by planting 30 trees per month on your behalf, helping Earth and helping you lessen your environmental impact.    ",
                              style: TextStyle(
                              color: Colors.black,
                              //fontFamily: "Poppins",
                              fontSize: 17,
                              fontWeight: FontWeight.normal),
                            ),
                          ),
                  ////////////////////////// subtitle End //////////////////////
                  




                  ////////////////////////// Table Start /////////////////////
                  
                              Container(
                          margin: EdgeInsets.only(bottom: 30, top:10),
                          child: Table(
                           // border: TableBorder.all(width: 1),
                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                            columnWidths: {
                              0: FractionColumnWidth(0.6),},
                            children: [
                              TableRow( children: [
                                titleCon(""),
                                titleCon("Besic"),
                                titleCon("Premium"),
                              ]),
                              TableRow( children: [
                                featureCon("Simple Tracking Features"),
                                Icon(Icons.check_circle, color: Colors.green[400],),
                                Icon(Icons.check_circle, color: Colors.green[400],),
                              ]),

                              TableRow( children: [
                                featureCon("Advanced Route Tracking"),
                                Container(),
                                Icon(Icons.check_circle, color: Colors.green[400],),
                              ]),

                              TableRow( children: [
                                featureCon("Advanced Meal Tracking"),
                                Container(),
                                Icon(Icons.check_circle, color: Colors.green[400],),
                              ]),

                              TableRow( children: [
                                featureCon("Advanced Purchase Tracking"),
                                Container(),
                                Icon(Icons.check_circle, color: Colors.green[400],),
                              ]),

                              TableRow( children: [
                                featureCon("Automatic Tree Planting"),
                                Container(),
                                Icon(Icons.check_circle, color: Colors.green[400],),
                              ]),
                            ],
                          ),
                        ),
                  ////////////////////////// Table End //////////////////////
                  
                  

                  ///////////////// Subscribe Button  Start///////////////
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                          colors: <Color>[
                            
                            Colors.green[700],
                            Colors.green[600],
                            //Color(0xFF3AC53F),
                            Colors.lightGreen[400],
                          ],
                          // stops: [
                          //   0.5,
                          //   1.0,
                          // ],
                        )
                      ),
                      width: MediaQuery.of(context).size.width/2,
                      height: 45,
                      child: FlatButton(
                        onPressed: (){
                          
                        },

                        child: Container(
                          //padding: EdgeInsets.only(left: 30, right: 30),
                          child: Text(
                             'Subscribe',
                            style: TextStyle(
                                color: Colors.white,
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
                       ///////////////// Subscribe Button  End///////////////
                      


                      ////////////////////////// Convince Start //////////////////////
                  Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(bottom: 25, top:25),
                            child: Text(
                              "Still Not Convinced? Try Premium 7 days Free!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                              color: Colors.black,
                              //fontFamily: "Poppins",
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                            ),
                          ),
                  ////////////////////////// Convince End //////////////////////
                  



                  ///////////////// Free Trial Button  Start///////////////
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                          colors: <Color>[
                            
                            Colors.green[700],
                            Colors.green[600],
                            //Color(0xFF3AC53F),
                            Colors.lightGreen[400],
                          ],
                          // stops: [
                          //   0.5,
                          //   1.0,
                          // ],
                        )
                      ),
                      width: MediaQuery.of(context).size.width/2,
                      height: 45,
                      child: FlatButton(
                        onPressed: (){
                          
                        },

                        child: Container(
                          //padding: EdgeInsets.only(left: 30, right: 30),
                          child: Text(
                             'Free Trial',
                            style: TextStyle(
                                color: Colors.white,
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
                       ///////////////// Free Trial Button  End///////////////


                  
                ],
              )),
        ),
      ),
    );
  }
}