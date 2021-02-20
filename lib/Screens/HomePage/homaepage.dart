import 'package:ecofy/Widgets/HomePageWidget/drawerWidget.dart';
import 'package:ecofy/Widgets/HomePageWidget/recommendCard.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
//import 'indicator.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: choices.length,
        child: Scaffold(
          key: _scaffoldKey,
          drawer: DrawerOnly(),
          appBar: AppBar(
            elevation: 0,
            iconTheme: IconThemeData( color: Colors.green),
            textTheme: TextTheme(),
            backgroundColor: Colors.white,
            title: Text(
              'ECofy',
              style: TextStyle(
                                            color: Colors.green,
                                            //fontFamily: "Poppins",
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
               ),
            centerTitle: true,
            leading: IconButton(
              onPressed: (){
                _scaffoldKey.currentState.openDrawer();
              },
              icon: Icon(Icons.sort, color: Colors.green,)
              ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Image.asset("assets/img/logo.png")
                  )
              ],
            bottom: TabBar(
              //isScrollable: true,
              labelColor: Colors.green,
              indicatorColor: Colors.green,
              unselectedLabelColor: Colors.grey,
              tabs: choices.map((Choice choice) {
                return Tab(
                  text: choice.title,
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return HomeBody();
            }).toList(),
          ),
        ),
      );
  }
}

////////////////////////////////////// Actual Body /////////////////////////
class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.yellow,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          //color: Colors.green,
          child: Column(
            children: <Widget>[
              PieChartSample2(),
              LineChartSample3(),

              ////////////////// Recommendation Part Start ///////////////
              
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 40),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child: Container(height: 1.5, color: Colors.green,)),
                  Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                             'Recommendation',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 21.0,
                                fontWeight: FontWeight.w500,
                              ),
                          ),
                        ),
                  Expanded(child: Container(height: 1.5, color: Colors.green,)),
                  ],
                ),
              ),

              ////////////////// Recomandation Part End ///////////////
              


              ////////////////// Food Recomandation Part Start //////////////
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10),
                          child: Text(
                             'Food Recommendation',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 19.0,
                                fontWeight: FontWeight.w500,
                              ),
                          ),
                        ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width/2.4,
                      //padding: EdgeInsets.only(left: 10, right: 10),
                      //color: Colors.red,
                      child: ListView.builder(
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                        return  ReccomendationCard();
                        }
                      ),
                    )
                  ],
                ),
              ),
              ////////////////// Food Recomandation Part End ///////////////
            
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
            ),

            ////////////////// Transport Recomandation Part Start //////////////
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10),
                          child: Text(
                             'Transport Recommendation',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 19.0,
                                fontWeight: FontWeight.w500,
                              ),
                          ),
                        ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width/2.4,
                      //padding: EdgeInsets.only(left: 10, right: 10),
                      //color: Colors.red,
                      child: ListView.builder(
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                        return  ReccomendationCard();
                        }
                      ),
                    )
                  ],
                ),
              ),
              ////////////////// Transport Recomandation Part End ///////////////
              

              Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
            ),


              ////////////////// Electric Appliances Recomandation Part Start //////////////
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 20,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10),
                          child: Text(
                             'Electric Appliances Recommendation',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 19.0,
                                fontWeight: FontWeight.w500,
                              ),
                          ),
                        ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width/2.4,
                      //padding: EdgeInsets.only(left: 10, right: 10),
                      //color: Colors.red,
                      child: ListView.builder(
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                        return  ReccomendationCard();
                        }
                      ),
                    )
                  ],
                ),
              ),
              ////////////////// Electric Appliances Recomandation Part End ///////////////

             Container(height: 110,)


            ],
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////// Actual Body /////////////////////////




class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Today', icon: Icons.directions_car,),
  const Choice(title: 'Monthly', icon: Icons.directions_car),
  const Choice(title: 'Yearly', icon: Icons.directions_bike),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}




/////////////////////


class PieChartSample2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          Container(
           // color: Colors.red,
            child: PieChart(
              PieChartData(
                  pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                    setState(() {
                      if (pieTouchResponse.touchInput is FlLongPressEnd ||
                          pieTouchResponse.touchInput is FlPanEnd) {
                        touchedIndex = -1;
                      } else {
                        touchedIndex = pieTouchResponse.touchedSectionIndex;
                      }
                    });
                  }),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections()),
            ),
          ),
          Column(
          //  mainAxisSize: MainAxisSize.max,
           // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Indicator(
                color: Color(0xff0293ee),
                text: 'First',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xfff8b250),
                text: 'Second',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xff845bef),
                text: 'Third',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xff13d38e),
                text: 'Fourth',
                isSquare: true,
              ),
              SizedBox(
                height: 18,
              ),
            ],
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 60 : 50;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        default:
          return null;
      }
    });
  }
}



////////////////////
class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key key,
    this.color,
    this.text,
    this.isSquare,
    this.size = 16,
    this.textColor = const Color(0xff505050),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
        )
      ],
    );
  }
}

//////////////////////////
///
///
///
class LineChartSample3 extends StatelessWidget {
  final weekDays = [
    'Sat',
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          width: 350,
          height: 200,
          child: LineChart(
            LineChartData(
              lineTouchData: LineTouchData(
                  getTouchedSpotIndicator: (LineChartBarData barData, List<int> spotIndexes) {
                    return spotIndexes.map((spotIndex) {
                      final FlSpot spot = barData.spots[spotIndex];
                      if (spot.x == 0 || spot.x == 6) {
                        return null;
                      }
                      return TouchedSpotIndicatorData(
                        const FlLine(color: Colors.blue, strokeWidth: 4),
                        const FlDotData(dotSize: 8, dotColor: Colors.deepOrange),
                      );
                    }).toList();
                  },
                  touchTooltipData: LineTouchTooltipData(
                      tooltipBgColor: Colors.blueAccent,
                      getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
                        return touchedBarSpots.map((barSpot) {
                          final flSpot = barSpot;
                          if (flSpot.x == 0 || flSpot.x == 6) {
                            return null;
                          }

                          return LineTooltipItem(
                            '${weekDays[flSpot.x.toInt()]} \n${flSpot.y} k calories',
                            const TextStyle(color: Colors.white),
                          );
                        }).toList();
                      })),
              extraLinesData: ExtraLinesData(horizontalLines: [
                HorizontalLine(
                  y: 1.8,
                  color: Colors.green.withOpacity(0.7),
                  strokeWidth: 4,
                ),
              ]),
              lineBarsData: [
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 1.3),
                    FlSpot(1, 1),
                    FlSpot(2, 1.8),
                    FlSpot(3, 1.5),
                    FlSpot(4, 2.2),
                    FlSpot(5, 1.8),
                    FlSpot(6, 3),
                  ],
                  isCurved: false,
                  barWidth: 4,
                  colors: [
                    Colors.orange,
                  ],
                  belowBarData: BarAreaData(
                    show: true,
                    colors: [
                      Colors.orange.withOpacity(0.5),
                      Colors.orange.withOpacity(0.0),
                    ],
                    gradientColorStops: [0.5, 1.0],
                    gradientFrom: const Offset(0, 0),
                    gradientTo: const Offset(0, 1),
                    spotsLine: BarAreaSpotsLine(
                      show: true,
                      flLineStyle: const FlLine(
                        color: Colors.blue,
                        strokeWidth: 2,
                      ),
                      checkToShowSpotLine: (spot) {
                        if (spot.x == 0 || spot.x == 6) {
                          return false;
                        }

                        return true;
                      },
                    ),
                  ),
                  dotData: FlDotData(
                      show: true,
                      dotColor: Colors.deepOrange,
                      dotSize: 6,
                      checkToShowDot: (spot) {
                        return spot.x != 0 && spot.x != 6;
                      }),
                ),
              ],
              minY: 0,
              gridData: FlGridData(
                show: true,
                drawHorizontalLine: true,
                drawVerticalLine: true,
                getDrawingHorizontalLine: (value) {
                  if (value == 0) {
                    return const FlLine(
                      color: Colors.deepOrange,
                      strokeWidth: 2,
                    );
                  } else {
                    return const FlLine(
                      color: Colors.grey,
                      strokeWidth: 0.5,
                    );
                  }
                },
                getDrawingVerticalLine: (value) {
                  if (value == 0) {
                    return const FlLine(
                      color: Colors.black,
                      strokeWidth: 2,
                    );
                  } else {
                    return const FlLine(
                      color: Colors.grey,
                      strokeWidth: 0.5,
                    );
                  }
                },
              ),
              titlesData: FlTitlesData(
                show: true,
                leftTitles: SideTitles(
                  showTitles: true,
                  getTitles: (value) {
                    switch (value.toInt()) {
                      case 0:
                        return '';
                      case 1:
                        return '1k calories';
                      case 2:
                        return '2k calories';
                      case 3:
                        return '3k calories';
                    }

                    return '';
                  },
                  textStyle: const TextStyle(color: Colors.black, fontSize: 10),
                ),
                bottomTitles: SideTitles(
                  showTitles: true,
                  getTitles: (value) {
                    return weekDays[value.toInt()];
                  },
                  textStyle: const TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}