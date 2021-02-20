import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FAQpage extends StatefulWidget {
  @override
  _FAQpageState createState() => _FAQpageState();
}

class _FAQpageState extends State<FAQpage> with SingleTickerProviderStateMixin{
 

 var qtitle = [
   "What is Lorem Ipsum?",
   "Where do we use it?",
   "Where does it come from?",
   "Where can I get some?",
   "How to logout?",
   "How do I know if a live streaming is happening",
 ];

 var qbody = [
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
  ];
  



  /////////////////// title Container/////////////

   Container titleContainer(String title) {
    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only( top: 10, left: 15, right: 15, bottom: 10),
                      decoration: BoxDecoration(
                       // border: Border(bottom: BorderSide())
                      ),
                      child: Text(
                              title,
                              style: TextStyle(
                                        color: Colors.green,
                                        //fontFamily: "Poppins",
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500),
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
          'FAQ',
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
            ////////////////////// Background Start ///////////////
            

            /////////////// card start /////////////////////
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                 margin: EdgeInsets.only( top: 20, left: 20, right: 20, bottom: 20),
                 padding: EdgeInsets.only( top: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: <Widget>[

                    Container(
                      child: Column(
                        children: <Widget>[
                          titleContainer('Topic lorem Ipsum'),
                          ////////////
                          Quesioncard(qtitle[0], ),
                          Quesioncard(qtitle[1]),
                          Quesioncard(qtitle[2])
                          ////////////
                        ],
                      ),
                    ),



                    Container(
                      child: Column(
                        children: <Widget>[
                          titleContainer("My Profile"),
                          ////////////
                          Quesioncard(qtitle[3]),
                          Quesioncard(qtitle[4]),
                          ////////////
                        ],
                      ),
                    ),


                    Container(
                      child: Column(
                        children: <Widget>[
                          titleContainer("Live Steaming"),
                          ////////////
                          Quesioncard(qtitle[5]),
                          ////////////
                        ],
                      ),
                    )
                    

                    
                    

                  ],
                ),
              ),
            )
            /////////////// card End //////////////////////
          ],
        ),
      ),
    );
  }
}




class Quesioncard extends StatefulWidget {
  final title;
  Quesioncard(this.title);
  @override
  _QuesioncardState createState() => _QuesioncardState();
}

class _QuesioncardState extends State<Quesioncard> {
  bool open = false; 
  @override
  Widget build(BuildContext context) {
    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(bottom: 5),
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                  if(open == false) {
                                      open = true;
                                  }else{
                                    open = false;
                                  }
                                  
                              });
                            },
                            child: Container(
                              color: Colors.grey[400],
                              padding: EdgeInsets.only(top:10, bottom: 10, right: 10, left: 5),
                              child: Row(
                                children: <Widget>[
                                  Icon(open == false ? Icons.arrow_right: Icons.arrow_drop_down, size: 35,),
                                  Expanded(
                                    child: Container(
                                        child: Text(
                                                '${widget.title}',
                                                style: TextStyle(
                                                          color: Colors.black,
                                                          //fontFamily: "Poppins",
                                                          fontSize: 17,
                                                          fontWeight: FontWeight.w700),
                                                ),
                                      ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          open == false ? Container() :
                          Container(
                           // color: Colors.red,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(top:10, bottom: 10, right: 10, left: 40),
                            child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                    style: TextStyle(
                                              color: Colors.black87,
                                              //fontFamily: "Poppins",
                                              fontSize: 17,
                                              fontWeight: FontWeight.w300),
                                    ),
                          ),
                        ],
                      ),
                    );
  }
}