import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  var selectedLang = "English";
  var selectedFont = "Medium";


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


///////////////////////// Button ////////////////////////
  ListTile _setButtonTile(IconData icon, String title, String trailing, Function action){
    return ListTile(
      leading: Icon(icon),
      title: Text(
                              title,
                              style: TextStyle(
                                            color: Colors.black,
                                            //fontFamily: "Poppins",
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),),
                            trailing: Text(
                              trailing,
                              style: TextStyle(
                                            color: Colors.grey,
                                            //fontFamily: "Poppins",
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),),
      onTap: (){
        action();
      },
    );
  }

  _languageAction(){
    languageBottomSheet(context);
  }

  _fontAction(){
    fontBottomSheet(context);
  }
  ///////////////////////// Button ////////////////////////
  

  /////////////////////////////////// Bottom Sheet Start ///////////////////////////
   languageBottomSheet(BuildContext context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _actionTile(context, 'English', Icons.flag, _action1),
              _actionTile(context, 'Spanish', Icons.flag, _action2),
              _actionTile(context, 'Bengali', Icons.flag, _action3),
            ],
          );
        }
    );
  }


  fontBottomSheet(BuildContext context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _actionTile(context, 'Large', Icons.flag, _action4),
              _actionTile(context, 'Medium', Icons.flag, _action5),
              _actionTile(context, 'Small', Icons.flag, _action6),
            ],
          );
        }
    );
  }

  ListTile _actionTile(BuildContext context, String name, IconData icon, Function action){
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
      onTap: (){
        Navigator.pop(context);
        action();
      },
    );
  }


///////////////////////// Language Action Start//////////////
  _action1(){
    setState(() {
      selectedLang = "English";
    });
  }

  _action2(){
    setState(() {
      selectedLang = "Spanish";
    });
  }

  _action3(){
    setState(() {
      selectedLang = "Bengali";
    });
  }
  ///////////////////////// Language Action End//////////////
  

  ///////////////////////// Font Action Start//////////////
  _action4(){
    setState(() {
      selectedFont = "Large";
    });
  }

  _action5(){
    setState(() {
      selectedFont = "Medium";
    });
  }

  _action6(){
    setState(() {
      selectedFont = "Small";
    });
  }
  ///////////////////////// Font Action End//////////////
  

  /////////////////////////////////// Bottom Sheet End /////////////////////////////


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData( color: Colors.green),
        backgroundColor: Colors.white,
        title: Text(
          'SETTINGS',
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


                  ////////////////////////// Buttons Start //////////////////////
                  
                  Container(
                  //  color: Colors.red,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top:2, bottom: 10),
                    child: Column(
                      children: <Widget>[
                          
                          _setButtonTile(Icons.language, "Language", selectedLang, _languageAction),

                          Divider(height: 1, color: Colors.black,),

                          _setButtonTile(Icons.text_fields, "Font Size", selectedFont, _fontAction),

                           Divider(height: 1, color: Colors.black,),
                           
                      ],
                    ),
                  ),


                  ////////////////////////// Buttons End //////////////////////
                  


                  ////////////////////////// title Start //////////////////////
                  Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(bottom: 0, top:25),
                            child: Text(
                              "You are currently subscribed to Ecofy Premium",
                              style: TextStyle(
                              color: Colors.black,
                              //fontFamily: "Poppins",
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                            ),
                          ),
                  ////////////////////////// title End //////////////////////
                  

                  ////////////////////////// subtitle Start //////////////////////
                  Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(bottom: 30, top:10),
                            child: Text(
                              "If you would like to unsuscribe from Ecofy Premium, click the unsuscribe button below. We’re sad to see you go! ",
                              style: TextStyle(
                              color: Colors.black,
                              //fontFamily: "Poppins",
                              fontSize: 17,
                              fontWeight: FontWeight.normal),
                            ),
                          ),
                  ////////////////////////// subtitle End //////////////////////
                  


                  ///////////////// Unsubscribe Button  Start///////////////
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
                             'Unsubscribe',
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
                       ///////////////// Unsubscribe Button  End///////////////
                      
                  
                ],
              )),
        ),
      ),
    );
  }
}