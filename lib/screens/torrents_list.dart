import 'package:clay_containers/widgets/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rutorrentmobile/model/torrent.dart';
import 'package:shimmer/shimmer.dart';

class TorrentListScreen extends StatelessWidget {
  const TorrentListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: testData.length,
        itemBuilder: (context, index) {
          return _torrentListTile(testData[index], context);
        },
      ),
    );
  }

  Widget _torrentListTile(Torrent torrent, BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 0.3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                
                Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: torrent.gradient,
                    ),
                  
                  
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                    width: 225,
                    child: Text(
                      torrent.torrentFileName,
                      style: TextStyle(),
                      overflow: TextOverflow.ellipsis,
                    )),
              ],
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                children: <Widget>[
                  Text((double.parse(torrent.size.split(".")[0]) *torrent.downloadingPercentage).toString()+"/"+torrent.size),
                  !torrent.done && !torrent.paused ? Text(" - 75 MB/s") : Container()
                ],
              ),
            ),
            // subtitle: Padding(
            //   padding: const EdgeInsets.only(left:25.0),
            //   child: LinearPercentIndicator(
            //     width: 200,
            //     lineHeight: 8.0,
            //     percent: torrent.downloadingPercentage,
            //     progressColor: Colors.blue,
            //   ),
            // ),
            trailing: CircularPercentIndicator(
              radius: 25,
              lineWidth: 3,
              center: !torrent.done
                  ? !torrent.paused ? Icon(
                      Icons.arrow_downward,
                      size: 15,
                    ) : Icon(
                      Icons.pause,
                      size: 15,
                    )
                  : Icon(
                      Icons.done,
                      size: 15,
                    ),
              percent: torrent.downloadingPercentage,
              progressColor: Colors.blue,
            ),
          ),
        ),
        SizedBox(
          height: 1.5,
        )
      ],
    );
  }
}
