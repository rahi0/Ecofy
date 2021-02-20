import 'package:flutter/material.dart';

class LifeSettingPage extends StatefulWidget {
  @override
  _LifeSettingPageState createState() => _LifeSettingPageState();
}

class _LifeSettingPageState extends State<LifeSettingPage> {

  var selectedLang = "English";
  var selectedFont = "Medium";



///////////////////////// Button ////////////////////////
  ListTile _setButtonTile(String img, String title, String trailing, Function action){
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(img),
      ),
      title: Text(
                              title,
                              style: TextStyle(
                                            color: Colors.black,
                                            //fontFamily: "Poppins",
                                            fontSize: 19,
                                            fontWeight: FontWeight.normal),),
                            trailing: Text(
                              trailing,
                              style: TextStyle(
                                            color: Colors.grey,
                                            //fontFamily: "Poppins",
                                            fontSize: 17,
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
          'LIFE SETTINGS',
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
              padding: EdgeInsets.only( top: 30, left: 10, right: 10, bottom: 40),
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
                          
                          _setButtonTile("assets/img/carlogo.png", "Main Transportation", "Car", _languageAction),

                          Divider(height: 1, color: Colors.black,),

                          _setButtonTile("assets/img/carlogo.png", "Avg. Car MPG", "21 mpg", _fontAction),

                           Divider(height: 1, color: Colors.black,),

                           _setButtonTile("assets/img/carlogo.png", "Avg Daily Driver Distance", "40 mi", _fontAction),

                           Divider(height: 1, color: Colors.black,),

                           _setButtonTile("assets/img/carlogo.png", "Avg Anually Flown Hour", "8 h", _fontAction),

                           Divider(height: 1, color: Colors.black,),

                           _setButtonTile("assets/img/plug1.png", "Household Size", "4 people", _fontAction),

                           Divider(height: 1, color: Colors.black,),

                           _setButtonTile("assets/img/plug1.png", "% Renewable Energy", "0%", _fontAction),

                           Divider(height: 1, color: Colors.black,),

                           _setButtonTile("assets/img/plug1.png", "Electricity Utility", "\$150", _fontAction),

                           Divider(height: 1, color: Colors.black,),
                           
                           _setButtonTile("assets/img/plug2.png", "Avg Non Vegeterian", "30 kg", _fontAction),

                           //Divider(height: 1, color: Colors.black,),
                           
                      ],
                    ),
                  ),


                  ////////////////////////// Buttons End //////////////////////
                  


                  

                 
                  
                ],
              )),
        ),
      ),
    );
  }
}