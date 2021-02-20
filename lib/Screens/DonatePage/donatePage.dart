import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class DonatePage extends StatefulWidget {
  @override
  _DonatePageState createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {

  bool _videoPaused = false;
  double _value = 6.0;
  int doller = 0;
  
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    // Initielize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
    //anim();
    super.initState();
  }




  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }


  Container buttonCon( IconData ico){
    return  Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                                colors: <Color>[
                                  
                                  Colors.green[700],
                                  Colors.green[600],
                                  //Color(0xFF3AC53F),
                                  Colors.lightGreen,
                                  Colors.lightGreen[400],
                                ],
                              ),
                        ),
                        child: Icon(ico, size: 40, color: Colors.white,),
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
          'Donate a Tree',
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(bottom: 110),
            child: Column(
              children: <Widget>[

                /////////////////////// Video Start /////////////////
                
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/3,
                  child: Stack(
                            children: <Widget>[
                              Center(
                                child:FutureBuilder(
                                  future: _initializeVideoPlayerFuture,
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState == ConnectionState.done) {
                                      // If the VideoPlayerController has finished initialization, use
                                      // the data it provides to limit the aspect ratio of the video.
                                      return AspectRatio(
                                        aspectRatio: _controller.value.aspectRatio,
                                        // Use the VideoPlayer widget to display the video.
                                        child:// ClipRRect(
                                         // borderRadius: BorderRadius.circular(15),
                                          //child:
                                           VideoPlayer(_controller)
                                        //  ),
                                      );
                                    } else {
                                      // If the VideoPlayerController is still initializing, show a
                                      // loading spinner.
                                      return Center(child: CircularProgressIndicator());
                                    }
                                  },
                                )),


                                GestureDetector(
                                  onTap: () {
                                            // Wrap the play or pause in a call to `setState`. This ensures the
                                            // correct icon is shown.
                                            setState(() {
                                              // If the video is playing, pause it.
                                              if (_controller.value.isPlaying) {
                                                _controller.pause();
                                                _videoPaused = true;
                                              } else {
                                                // If the video is paused, play it.
                                                _controller.play();
                                                _videoPaused = false;
                                              }
                                            });
                                          },
                                  child: Container(
                                    height: MediaQuery.of(context).size.width/2,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.transparent,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          height: 56.0,
                                          width: 56.0,
                                          decoration: BoxDecoration(
                                            color: _controller.value.isPlaying ? Colors.transparent : Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(50))
                                          ),
                                          child: Icon(
                                              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                                              size: 30.0,
                                              color:  _controller.value.isPlaying ? Colors.transparent : Colors.green,
                                            ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                            ],
                          ),
                ), 

                /////////////////////// Video End /////////////////
                

                Container(
                                    margin: EdgeInsets.only(top: 20, bottom: 10),
                                    width: MediaQuery.of(context).size.width,
                                    alignment: Alignment.center,
                                    child: Text(
                                      'I would like to offset',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                

                /////////////////////// Slider Start /////////////////
                
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10, right: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Slider(
                              value: _value,
                              min: 0.0,
                              max: 100.0,
                              //divisions: 10,
                              activeColor: Colors.green,
                              inactiveColor: Colors.grey[400],
                              //label: '${_value.toInt()}',
                              onChanged: (double newValue) {
                                setState(() {
                                  _value = newValue;
                                });
                              },
                              // semanticFormatterCallback: (double newValue) {
                              //   return '${newValue} dollars';
                              // }
                          ),
                      ),

                      // This is the part that displays the value of the slider.
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    width: 55.0,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text('${_value.toInt()}%',
                        style: TextStyle(
                            color: Colors.green,
                            fontFamily:"sourcesanspro",
                            fontSize: 17,
                            fontWeight: FontWeight.normal       
                              )),
                  ),
                ),
                    ],
                  ),
                ), 

                /////////////////////// Slider End /////////////////
                

                 Container(
                                    margin: EdgeInsets.only(top: 10, bottom: 20),
                                    width: MediaQuery.of(context).size.width,
                                    alignment: Alignment.center,
                                    child: Text(
                                      'of my emissions for today!',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),



                /////////////////////// Doller Start /////////////////
                
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //////////////// decrement Button Start //////////
                     GestureDetector(
                       onTap: decrement,
                       child: buttonCon(Icons.remove)
                       ),
                      //////////////// decrement Button End ///////////
                      
                      Container(
                                    margin: EdgeInsets.only(left: 20, right: 20),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '\$${doller}',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                       //////////////// increment Button Start //////////
                      GestureDetector(
                       onTap: increment,
                       child: buttonCon(Icons.add)
                       ),
                      //////////////// increment Button End ///////////
                    ],
                  ),
                ), 

                /////////////////////// Doller End /////////////////
                

                Container(
                                    margin: EdgeInsets.only(top: 20, bottom: 20),
                                    width: MediaQuery.of(context).size.width,
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Your donation will help plant',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                
                ////////////////////// Tree Number Start //////////////////
                Container(
                                    margin: EdgeInsets.only(top: 0, bottom: 20),
                                    width: MediaQuery.of(context).size.width,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '${doller*2} trees!',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 23.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                ////////////////////// Tree Number Start //////////////////


                /////////////////////// Instruction Start /////////////////
                
                Container( 
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.only(left: 15, right: 15),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Instructions',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                Container(
                                    
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.only(left: 15, right: 15),
                                    margin: EdgeInsets.only(top: 5, bottom: 20),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ), 

                /////////////////////// Instruction End /////////////////
                


                /////////////////////// Donate Button Start /////////////////
                
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
                             'Donate',
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

                /////////////////////// Donate Button End /////////////////
              ],
            ),
        ),
      ),
      )
    );
  }

   decrement(){

        if(doller == 1){

        }
        else{
      setState(() {
            doller--;
        });
      
    }
  }

  increment(){

        setState(() {

         doller++;
        });
  }
}