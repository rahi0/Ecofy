import 'package:ecofy/Screens/ContuctUsPage/contactUsPage.dart';
import 'package:ecofy/Screens/DonatePage/donatePage.dart';
import 'package:ecofy/Screens/FAQPage/faqPage.dart';
import 'package:ecofy/Screens/LeaderBoardpage/leaderBoardpage.dart';
import 'package:ecofy/Screens/LifeSettingPage/lifeSettingPage.dart';
import 'package:ecofy/Screens/NewsPage/newsPage.dart';
import 'package:ecofy/Screens/ProfilePage/profilePage.dart';
import 'package:ecofy/Screens/QuizPage/quizPage.dart';
import 'package:ecofy/Screens/SettingPage/settingPage.dart';
import 'package:ecofy/Screens/SubscriptionPage/subscriptionPage.dart';
import 'package:ecofy/customWidget/routeTransition/routeAnimation.dart';
import 'package:flutter/material.dart';

class DrawerOnly extends StatefulWidget {
  @override
  _DrawerOnlyState createState() => _DrawerOnlyState();
}

class _DrawerOnlyState extends State<DrawerOnly> {


  Container buttonContainer(Icon icons, String title) {
    return Container(
          padding: EdgeInsets.only(left: 30),
          margin: EdgeInsets.only(bottom: 5),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                   height: 45,
                    child: Row(
                      children: <Widget>[
                        icons,
                        Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: new Text(
                    title,
                    style: TextStyle(
                                                    color: Color(0xFF464646),
                                                  //  fontFamily: "Poppins",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500),
                  ),
                ),
                        ),
                      ],
                    ),
                  ),
              ),

            ],
          ),
        );
  }


  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: new ListView(
          
      children: <Widget>[
        new DrawerHeader(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                  colors: <Color>[
                    
                    Colors.green[700],
                    //Color(0xFF3AC53F),
                    Colors.lightGreen[400],
                  ],
                  // stops: [
                  //   0.4,
                  //   0.7,
                  //   1.0,
                  // ],
                )
          ),
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/img/CR7.jpg',
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                
                child: new Text(
                  "Humayun Rahi",
                  style: TextStyle(
                                            color: Color(0xFFFFFFFF),
                                            //fontFamily: "Poppins",
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                ),
              ),
            ],
          )),

          //////   camera icon  ////////////
          // decoration: new BoxDecoration(
          //     color: Colors.orange
          // ),
        ),


        //////////// profile Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: ProfilePage()));
          },
          child: Hero(
            tag: "lala",
            child: buttonContainer(Icon(Icons.person, color: Color(0xFF464646), ) , "Profile", ))
          ),
        //////////// profile Button End////////////////
        

        //////////// LeaderBoardpage Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: LeaderBoardpage()));
          },
          child: buttonContainer(Icon(Icons.equalizer, color: Color(0xFF464646), ) , "LeaderBoard", )
          ),
        //////////// LeaderBoardpage Button End////////////////
        

        //////////// Home Button Start////////////////
        
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: LifeSettingPage()));
          },
          child: buttonContainer(Icon(Icons.favorite, color: Color(0xFF464646) ) , "Life Setting", )
          ),
        
        //////////// Home Button End////////////////
        

        //////////// Trippa Card Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: SubscriptionPage()));
          },
          child: buttonContainer(Icon(Icons.payment, color: Color(0xFF464646), ) , "Subscription")
          ),
        //////////// Trippa Card Button End////////////////

      

        //////////// Invite Friends Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: SettingPage()));
          },
          child: buttonContainer(Icon(Icons.settings, color: Color(0xFF464646), ) , "Setting", )
          ),
        //////////// Invite Friends Button End////////////////
        
        


        //////////// Notification Button Start////////////////
        InkWell(
          onTap: (){
           //Navigator.push( context, FadeRoute(page: NotificationPage()));
          },
          child: buttonContainer(Icon(Icons.supervised_user_circle, color: Color(0xFF464646), ) , "About Us", )
          ),
        //////////// Notification Button End////////////////
        

        //////////// ContactUs Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: ContactUsPage()));
          },
          child: Hero(
            tag: "yoyo",
            child: buttonContainer(Icon(Icons.contacts, color: Color(0xFF464646),) , "Contact Us",))
          ),
        //////////// ContactUs Button End////////////////

       //////////// FAQpage Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: FAQpage()));
          },
          child: buttonContainer(Icon(Icons.help, color: Color(0xFF464646), ) , "FAQ", )
          ),
        //////////// FAQpage Button End////////////////
        




        //////////// NewsPage Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: NewsPage()));
          },
          child: buttonContainer(Icon(Icons.help, color: Color(0xFF464646), ) , "NewsPage", )
          ),
        //////////// NewsPage Button End////////////////
        


        //////////// DonatePage Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: DonatePage()));
          },
          child: buttonContainer(Icon(Icons.help, color: Color(0xFF464646), ) , "DonatePage", )
          ),
        //////////// DonatePage Button End////////////////
        
         //////////// QuizPage Button Start////////////////
        InkWell(
          onTap: (){
            Navigator.push( context, FadeRoute(page: QuizPage()));
          },
          child: buttonContainer(Icon(Icons.help, color: Color(0xFF464646), ) , "QuizPage", )
          ),
        //////////// QuizPage Button End////////////////
        

        SizedBox(height: 100,)

        
        
       

      ],
    ));
  }
}
