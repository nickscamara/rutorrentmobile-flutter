import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:percent_indicator/percent_indicator.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<double> data = [0.0, 0.5, 1.0, 2.0, 3.0, 1.0, 2.5, 2.8, 3, 3.5, 4.0];
  var data1 = [0.0, -2.0, 3.5, -2.0, 0.5, 0.7, 0.8, 1.0, 2.0, 3.0, 3.2];
 
  @override
  void initState() {
    super.initState();
   

  }
  
  
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      StaggeredGridView.count(
        crossAxisCount: 12,
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () => {
                    Navigator.push(context,
                         MaterialPageRoute(builder: (context) => null),),
                  },
                  icon: Icon(Icons.menu),
                ),
                Hero(
                  tag: "profile",
                  child: GestureDetector(
                    onTap: () => Navigator.push(context,
                         MaterialPageRoute(builder: (context) => null),),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: <Widget>[
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/img/logo.png'),
                                  fit: BoxFit.cover)),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                              height: 15.0,
                              width: 15.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.red)),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(1.3),
                            child: Text(
                              "+5",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Welcome back,',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        fontSize: 20.0)),
                 Text("Nicolas",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                              fontSize: 35.0)),
                  
                
                SizedBox(height: 20.0),
                // Text('Current Matches',
                //     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0))
              ],
            ),
          ),
          subTitle('Data Usage'),
          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: <Widget>[
          Hero(
            tag: "performance",
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => null));
                },
                child: gradientStatsCard("title")),
          ),
          //     mychart1Items("Last Game", "null", "Value of joey"),
          //     gradientStatsCard("title"),

          //     statsCard("title"),
          //     statsCard("title"),
          //   ],
          // ),
          //gradientGamesPlayedCard(),
          //gradientGamesPlayedCard2(),
          listStats("Download", .45, "9gb", "March 27th"),
          listStats("Upload", .45, "3gb", "March 27th"),
          subTitle('Trackers'),
          listStatsFull("Average Speed", .45, "150 MB/s", "\t0.0KB/s",0),
          subTitle('Peers'),
          listStatsFull("Peers", .45, "150 MB/s", "\t0.0KB/s",0),
          // _buildCardItem(text: "Active(%)", pcentText: "95%", percent: .95),
          // _buildCardItem(text: "Top USA", pcentText: "87%", percent: .87),
          // _buildCardItem(text: "Top World", pcentText: "53%", percent: .53),
        ],
        staggeredTiles: [
          StaggeredTile.extent(12, 50.0),
          StaggeredTile.extent(12, 86.0),
          StaggeredTile.extent(12, 55.0),
          StaggeredTile.extent(12, 175.0),
          // StaggeredTile.extent(6, 100.0),
          //StaggeredTile.extent(6, 100.0),
          StaggeredTile.extent(6, 75.0),
          StaggeredTile.extent(6, 75.0),
          StaggeredTile.extent(12, 55.0),
          StaggeredTile.extent(12, 80.0),
          StaggeredTile.extent(6, 55.0),
          StaggeredTile.extent(12, 80.0),
          // StaggeredTile.extent(4, 235.0),
          // StaggeredTile.extent(4, 235.0),
          // StaggeredTile.extent(4, 235.0),
        ],
      ),
    ]);
  }

  Widget gradientGamesPlayedCard2() {
    return Container(
      width: 150,
      child: GradientCard(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "NEXT GAME",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                child: Text(
                  "April 3rd",
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Theme.of(context).highlightColor,
                      fontSize: 40),
                ),
              ),
            )
          ],
        ),
        gradient: LinearGradient(colors: [
          Theme.of(context).accentColor,
          Theme.of(context).accentColor
        ]),
        shadowColor: Gradients.tameer.colors.last.withOpacity(0.25),
        elevation: 8,
      ),
    );
  }

  Widget gradientGamesPlayedCard() {
    return Container(
      width: 150,
      child: GradientCard(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "DAILY REPS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
                child: Text(
                  "29/150",
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Theme.of(context).highlightColor,
                      fontSize: 40),
                ),
              ),
            )
          ],
        ),
        gradient: LinearGradient(colors: [
          Theme.of(context).accentColor,
          Theme.of(context).accentColor
        ]),
        shadowColor: Gradients.tameer.colors.last.withOpacity(0.25),
        elevation: 8,
      ),
    );
  }

  Widget gradientStatsCard(String title) {
    return Container(
      width: 300,
      child: GradientCard(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "TORRENTS",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w200),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 0),
                child: Text(
                  "15",
                  style: TextStyle(
                      fontSize: 69,
                      color: Colors.white,
                      fontWeight: FontWeight.w200),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 100.0, bottom: 15),
                child: Text(
                  "downloaded",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "March",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "27",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(left: 20, bottom: 45, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Seeding ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                    new CircularPercentIndicator(
                      radius: 15,
                      lineWidth: 1.5,
                      percent: 0.7,
                      progressColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(left: 20, bottom: 25, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Downloading ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                    new CircularPercentIndicator(
                      radius: 15,
                      lineWidth: 1.5,
                      percent: 0.5,
                      progressColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(left: 20, bottom: 5, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Done ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                    new CircularPercentIndicator(
                      radius: 15,
                      lineWidth: 1.5,
                      percent: 0.5,
                      progressColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
           
          ],
        ),
        gradient: LinearGradient(colors: [
          Theme.of(context).primaryColor,
          Theme.of(context).secondaryHeaderColor
        ]),
        shadowColor: Gradients.tameer.colors.last.withOpacity(0.25),
        elevation: 8,
      ),
    );
  }

  Widget listStats(
      String title, double pcent, String txtpcent, String subtitle) {
    return GradientCard(
      elevation: 8,
      shadowColor: Gradients.tameer.colors.last.withOpacity(0.25),
      gradient: LinearGradient(
          colors: [Theme.of(context).cardColor, Theme.of(context).cardColor]),
      child: Center(
        child: ListTile(
          //leading: Icon(Icons.track_changes),
          title: Row(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
            ],
          ),
          trailing: CircularPercentIndicator(
            radius: 40.0,
            lineWidth: 3,
            animation: true,
            percent: pcent,
            center: new Text(
              txtpcent,
              style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Theme.of(context).primaryColor,
          ),

          subtitle: Text(
            subtitle,
            style: TextStyle(
                fontWeight: FontWeight.w200,
                color: Colors.black),
            textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }

  Widget listStatsFull(
      String title, double pcent, String txtpcent, String subtitle, int a) {
    return GradientCard(
      elevation: 8,
      shadowColor: Gradients.tameer.colors.last.withOpacity(0.25),
      gradient: LinearGradient(
          colors: [Theme.of(context).cardColor, Theme.of(context).cardColor]),
      child: Center(
        child: ListTile(
          //leading: Icon(Icons.track_changes),
          title:
              //  Icon(Icons.language,color: Colors.red,),
              //  SizedBox(width: 10,),
              Text(
            "\t" + title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          ),

          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              a != 0 ? Container() : LinearPercentIndicator(
                animation: true,
                percent: pcent,
                lineHeight: 10.0,
                animationDuration: 2500,
                progressColor: Theme.of(context).primaryColor,
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    subtitle,
                    style: TextStyle(color: Colors.black.withOpacity(.5)),
                  ),
                  Text(
                    txtpcent,
                    style: TextStyle(color: Colors.black.withOpacity(.5)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget statsCard(String title) {
    return Container(
      width: 185,
      child: Padding(
        padding: EdgeInsets.all(12.5),
        child: Material(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 12.5,
              ),
              Text(
                "Torrent Downloaded",
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).primaryColor),
              ),
              Text(
                "87%",
                style: TextStyle(
                    fontSize: 50, color: Theme.of(context).accentColor),
              ),
              Text(
                "Accuracy",
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).accentColor),
              ),
              SizedBox(
                height: 12.5,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget subTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0)),
        ],
      ),
    );
  }

  Widget mychart1Items(String title, String priceVal, String subtitle) {
    return Container(
      width: 185,
      child: Padding(
        padding: const EdgeInsets.all(12.5),
        child: Material(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10.0),
          child: Padding(
            padding: EdgeInsets.all(7.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 12.5,
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      child: new Sparkline(
                        data: data,
                        lineColor: Colors.blue[100],
                        pointsMode: PointsMode.all,
                        pointSize: 2.0,
                      ),
                    ),
                    Text(
                      "Angular Velocity",
                      style: TextStyle(
                          fontSize: 20, color: Theme.of(context).accentColor),
                    ),
                    SizedBox(
                      height: 12.5,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardItem(
      {@required String text, String pcentText, double percent}) {
    return Container(
      child: Padding(
          padding:
              EdgeInsets.only(left: 20.0, top: 10.0, bottom: 0.0, right: 20.0),
          child: Container(
            child: Stack(
              children: <Widget>[
                CircularPercentIndicator(
                  radius: 105.0,
                  lineWidth: 7.5,
                  animation: true,
                  percent: percent,
                  center: new Text(
                    pcentText,
                    style: new TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 30.0),
                  ),
                  footer: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      new Text(
                        text,
                        style: new TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 15.0),
                      ),
                    ],
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Theme.of(context).primaryColor,
                ),
              ],
            ),
          )),
    );
  }
}
