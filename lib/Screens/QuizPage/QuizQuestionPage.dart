import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class QuizQuestionPage extends StatefulWidget {
  @override
  _QuizQuestionPageState createState() => _QuizQuestionPageState();
}

class _QuizQuestionPageState extends State<QuizQuestionPage> {
  PageController _controller = PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  String selectedOption = "";
  



/////////////////////Button//////////////////
Container button(String title, Color col, Color txtCol){
  return  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: col,
                        border: Border.all(width: 0.5)
                      ),
                      width: MediaQuery.of(context).size.width/1.5,
                      margin: EdgeInsets.only(bottom: 10),
                      height: 40,
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        style: TextStyle(
                            color: txtCol,
                            fontSize: 18.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        );
}
/////////////////////Button//////////////////

  /////////////////// Page Container/////////////

   Container pageContainer() {
    return Container(
                width: MediaQuery.of(context).size.width,
                 margin: EdgeInsets.only( top: 20, left: 20, right: 20, bottom: 20),
                 padding: EdgeInsets.only( top: 20, bottom: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    //boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 3)],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: <Widget>[


                    //////////////// Question  Start///////////////
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: Text(
                             'Which of these fabrics usually has a lower carbon footprint?',
                             textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500,
                              ),
                          ),
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: Text(
                             '(Hint: it can be organic and is biodegradable!)',
                             textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                              ),
                          ),
                        ),

                        ],
                      ),
                    ),
                    //////////////// Question  end///////////////
                    ///
                    ///
                    

                    //////////////// Option  Start///////////////
                    Expanded(
                      child: Container(
                       // color: Colors.red,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[


                            ////////////// A \\\\\\\\\\\\\\\\\\\\
                            GestureDetector(
                              onTap: (){
                                             setState(() {
                                               selectedOption = "A";
                                             });
                                           },
                              child: button( "Nylon", selectedOption == "A" ? Colors.green[400] : Colors.white, selectedOption == "A" ? Colors.white : Colors.black )
                              ),
                            ////////////// A \\\\\\\\\\\\\\\\\\\\
                            

                            ////////////// A \\\\\\\\\\\\\\\\\\\\
                            GestureDetector(
                              onTap: (){
                                             setState(() {
                                               selectedOption = "B";
                                             });
                                           },
                              child: button( "Nylon", selectedOption == "B" ? Colors.green[400] : Colors.white, selectedOption == "B" ? Colors.white : Colors.black )
                              ),
                            ////////////// A \\\\\\\\\\\\\\\\\\\\
                            
                            ////////////// A \\\\\\\\\\\\\\\\\\\\
                            GestureDetector(
                              onTap: (){
                                             setState(() {
                                               selectedOption = "C";
                                             });
                                           },
                              child: button( "Nylon", selectedOption == "C" ? Colors.green[400] : Colors.white, selectedOption == "C" ? Colors.white : Colors.black )
                              ),
                            ////////////// A \\\\\\\\\\\\\\\\\\\\
                            
                            ////////////// A \\\\\\\\\\\\\\\\\\\\
                            GestureDetector(
                              onTap: (){
                                             setState(() {
                                               selectedOption = "D";
                                             });
                                           },
                              child: button( "Nylon", selectedOption == "D" ? Colors.green[400] : Colors.white, selectedOption == "D" ? Colors.white : Colors.black )
                              )
                            ////////////// A \\\\\\\\\\\\\\\\\\\\

                          ],
                        ),
                      ),
                    ),
                    //////////////// Option  End///////////////


                   ///////////////// Next Button  Start///////////////
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
    _controller.nextPage(duration: _kDuration, curve: _kCurve);
                        },

                        child: Container(
    //padding: EdgeInsets.only(left: 30, right: 30),
    child: Text(
     'Next',
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
                       ///////////////// Next Button  End///////////////
                    

                    
                    

                  ],
                ),
              );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
             gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                  colors: <Color>[
                    
                    Colors.green[700],
                    //Color(0xFF3AC53F),
                    Colors.lightGreen[400],
                  ],
                )
          ),
          child: Column(
            children: <Widget>[

              Container(
                //color: Colors.white,
                padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                               //_controller.previousPage(duration: _kDuration, curve: _kCurve);
                            },
                            child: Container(
                            //margin: EdgeInsets.only(left: 15.0, top: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                             // boxShadow: [BoxShadow(color: Colors.grey[500], blurRadius: 5)],
                            ),
                            child: Icon(Icons.keyboard_arrow_left, size: 40,color: Colors.green,)
                            ),
                          ),

                          Container(
                        child: Text(
                                                       "Quiz",
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                              color: Colors.white,
                                                              fontFamily: "Poppins",
                                                              fontSize: 27,
                                                              fontWeight: FontWeight.w700),
                                                        ),
                      ),


                      SizedBox(width: 30,)
                  ],
                ),
              ),


              //////////////////////Indicator Start///////////////
              SmoothPageIndicator(
                      controller: _controller,  // PageController
                      count:  5,
                      effect:  ExpandingDotsEffect(
                        //dotWidth: 24,
                        dotHeight: 7,
                        activeDotColor: Colors.white,
                        dotColor: Colors.grey[400],
                      ),  // your preferred effect
                    ),
              //////////////////////Indicator end///////////////


             //////////// Form Body start ///////////////
             
             Expanded(
               child: Container(
                // alignment: Alignment.center,
                 width: MediaQuery.of(context).size.width,
                 //margin: EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 40),
                 decoration: BoxDecoration(
                   color:  Colors.transparent,
                 ),
                 


                 /////////////////////// Changeable widget start/////////////////////////
                 child: PageView.builder(
                        itemBuilder: (context, position) {
                          return pageContainer();
                        },
                        controller: _controller,
                        itemCount: 5,
                        physics: NeverScrollableScrollPhysics(),
                      )

                 /////////////////////// Changeable widget end /////////////////////////
               ),
             ),

             
            ],
          ),
        ),
      )
    );
  }
}



//_controller.nextPage(duration: _kDuration, curve: _kCurve);

