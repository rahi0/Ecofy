import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nmbrController = TextEditingController();



  /////////////////// textField Container/////////////

   Container textFieldContainer(TextEditingController textcontroller, TextInputType keytype, String hintTxt) {
    return Container(
              margin: EdgeInsets.only(bottom: 15,),
              child: TextField(
    style: TextStyle(
          color: Color(0xFF656565),
          fontSize: 16,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500),
    cursorColor: Color(0xFF9b9b9b),
    controller: textcontroller,
    keyboardType: keytype,
    readOnly: true,
    
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: Colors.black, width: 0.5)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: Colors.black, width: 0.5)),
      hintText: hintTxt,
      hintStyle: TextStyle(
          color: Colors.black87,
          fontSize: 18,
          fontFamily: "Poppins",
          fontWeight: FontWeight.normal),
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
          'PROFILE',
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
          alignment: Alignment.center,
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
                  padding: EdgeInsets.only( top: 70, left: 20, right: 20, bottom: 20),
                  alignment: Alignment.center,
                 // color: Colors.yellow,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[

                      ////////////////////////// Info Start //////////////////////
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 50),
                        padding: EdgeInsets.only( top: 10, left: 15, right: 15, bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: <Widget>[

                            /////////////// Edit Button Start//////////////////
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                icon: Icon(Icons.edit, size: 35, color: Colors.black,), 
                                onPressed: null),
                            ),
                            /////////////// Edit Button End//////////////////
                            

                            /////////////// name Start//////////////////
                            Hero(
                              tag: "lala",
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(top:MediaQuery.of(context).size.width*0.09, bottom: 20),
                                child: Text(
                                  "Humayun Rahi",
                                  style: TextStyle(
                                                            color: Colors.black,
                                                            //fontFamily: "Poppins",
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            /////////////// name End//////////////////
                            

                            /////////////// Emal Start//////////////////
                            textFieldContainer( emailController, TextInputType.text, "humayunrahi@gmail.com"),
                            /////////////// Emal End//////////////////
                            

                            /////////////// Number Start/////////////////
                            textFieldContainer( nmbrController, TextInputType.text, "+0123927423459"),
                            /////////////// Number End//////////////////
                            

                            /////////////// About Start/////////////////
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top:10, bottom: 15),
                              child: Text(
                                "About Me",
                                style: TextStyle(
                                  color: Colors.black,
                                  //fontFamily: "Poppins",
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                              ),
                            ),
                            /////////////// About End//////////////////
                            


                            /////////////// text Start/////////////////
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida",
                                style: TextStyle(
                                color: Colors.grey[600],
                                //fontFamily: "Poppins",
                                fontSize: 17,
                                fontWeight: FontWeight.normal),
                              ),
                            ),
                            /////////////// text End//////////////////
                          ],
                        ),
                      ),
                      ////////////////////////// Info End //////////////////////


                      ////////////////////////// Picture Start //////////////////////
                      Container(
                                decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                              ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/img/CR7.jpg',
                                    height: MediaQuery.of(context).size.width/3,
                                    width: MediaQuery.of(context).size.width/3,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                      ////////////////////////// Picture End //////////////////////
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