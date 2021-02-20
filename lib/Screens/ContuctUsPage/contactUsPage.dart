import 'package:flutter/material.dart';

class ContactUsPage extends StatefulWidget {
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController subController = TextEditingController();
  TextEditingController msgController = TextEditingController();



  /////////////////// textField Container/////////////

   Container textFieldContainer(TextEditingController textcontroller, TextInputType keytype, String hintTxt, int maxline) {
    return Container(
              margin: EdgeInsets.only(bottom: 15,),
              child: TextField(
    style: TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500),
    cursorColor: Color(0xFF9b9b9b),
    controller: textcontroller,
    keyboardType: keytype,
    readOnly: false,
    maxLines: maxline,
    
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: Colors.black, width: 0.5)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: Colors.black, width: 0.5)),
      hintText: hintTxt,
      hintStyle: TextStyle(
          color: Color(0xFF656565),
          fontSize: 18,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400),
      contentPadding: EdgeInsets.only(left: 15, bottom: 5, top: 5, right: 10),
      fillColor: Color(0xFFFFFFFF),
      filled: true,
      
    ),
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
          'CONTACT US',
          style: TextStyle(
                                        color: Colors.green,
                                        //fontFamily: "Poppins",
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
           ),
         centerTitle: true,
        // leading: IconButton(
        //   onPressed: (){
        //     //_scaffoldKey.currentState.openDrawer();
        //   },
        //   icon: Icon(Icons.sort, color: Colors.green,)
        //   ),
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            ////////////////////// Background Start ///////////////
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[

                  Container(
                     width: MediaQuery.of(context).size.width,
                     height: MediaQuery.of(context).size.height/2.7,
                     decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
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
                  ),

                  Expanded(
                    child: Container(color: Colors.grey[200],)
                  )
                ],
              ),
            ),
            ////////////////////// Background Start ///////////////
            

            /////////////// card start /////////////////////
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                  padding: EdgeInsets.only( top: 0, left: 20, right: 20, bottom: 20),
                  alignment: Alignment.center,
                 // color: Colors.yellow,
                  child: Column(
                    children: <Widget>[


                      ////////////////////////// Picture Start //////////////////////
                      Container(
                                  height: MediaQuery.of(context).size.width/2.5,
                                  width: MediaQuery.of(context).size.width/2.5,
                                  margin: EdgeInsets.only(bottom: 20, top:10),
                                child: Image.asset(
                                  'assets/img/logo.png',
                                  color: Colors.white,
                                  fit: BoxFit.contain,
                                ),
                              ),
                      ////////////////////////// Picture End //////////////////////

                      ////////////////////////// Info Start //////////////////////
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only( top: 30, left: 15, right: 15, bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: <Widget>[
                            

                            /////////////// Emal Start//////////////////
                            textFieldContainer( emailController, TextInputType.emailAddress, "Email", 1),
                            /////////////// Emal End//////////////////
                            

                            /////////////// Number Start/////////////////
                            textFieldContainer( subController, TextInputType.text, "Subject", 1),
                            /////////////// Number End//////////////////
                            

                            /////////////// Messege Start/////////////////
                            textFieldContainer( msgController, TextInputType.text, "Messege", 5),
                            /////////////// Messege End//////////////////
                            

                            /////////////// Attachment Start/////////////////
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top:0, bottom: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: Text(
                                        "Attachment img.jpg",
                                        style: TextStyle(
                                                                  color: Colors.grey[600],
                                                                  //fontFamily: "Poppins",
                                                                  fontSize: 17,
                                                                  fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),



                                  ///////////////// Attachment Button  Start///////////////
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.grey[400]
                          ),
                         // width: MediaQuery.of(context).size.width/2,
                          height: 40,
                          child: FlatButton(
                            onPressed: (){
                              
                            },

                            child: Container(
                              //padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                 'Select Attachment',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              ),
                            ),
                            color: Colors.transparent,
                            //elevation: 4.0,
                            //splashColor: Colors.blueGrey,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                          )),
                           ///////////////// Attachment Button  End///////////////
                                ],
                              ),
                            ),
                            /////////////// Attachment End//////////////////
                            

                            ///////////////// Submit Button  Start///////////////
                      Hero(
                        tag: "yoyo",
                        child: Container(
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
                                   'Submit',
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
                      ),
                           ///////////////// Submit Button  End///////////////
                            

                          ],
                        ),
                      ),
                      ////////////////////////// Info End //////////////////////


                      
                    ],
                  )),
            )
            /////////////// card End //////////////////////
          ],
        ),
      ),
    );
  }
}