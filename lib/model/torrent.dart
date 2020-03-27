import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class Torrent {
  String torrentFileName;
  bool downloading;
  double downloadingPercentage;
  String description;
  String imgUrl;
  String status;
  DateTime eta;
  String priority;
  String size;
  DateTime createdOn;
  DateTime finishedOn;
  bool done;
  List<String> peers;
  List<String> seeders;
  Gradient gradient;
  bool paused;
  Torrent(
      {this.createdOn,
      this.description,
      this.done,
      this.downloading,
      this.downloadingPercentage,
      this.eta,
      this.finishedOn,
      this.imgUrl,
      this.peers,
      this.paused,
      this.priority,
      this.seeders,
      this.size,
      this.status,
      this.gradient,
      this.torrentFileName});
}

List<Torrent> testData = [
  new Torrent(
      torrentFileName: "Google Summer of Code Book",
      size: "10.0 MB",
      downloadingPercentage: 0.3,
      done: false,
      paused: false,
      status: "Downloading",
      seeders: ["287.1.3.119, 287.1.3.118, 287.1.3.117"],
      eta: DateTime.now().add(Duration(hours: 2)),
      gradient: Gradients.coldLinear),
  new Torrent(
      torrentFileName: "C++ documentation",
      size: "3.0 MB",
      downloadingPercentage: 0.5,
      done: false,
      paused: false,
      status: "Downloading",
      seeders: ["287.1.3.119, 287.1.3.118, 287.1.3.117"],
      eta: DateTime.now().add(Duration(hours: 1)),
      gradient: Gradients.coldLinear),
  new Torrent(
      torrentFileName: "Linux Kernel 0.19.3",
      size: "145.5 MB",
      downloadingPercentage: 0.5,
      done: false,
      paused: false,
      status: "Downloading",
      seeders: ["287.1.3.119, 287.1.3.118, 287.1.3.117"],
      eta: DateTime.now().add(Duration(hours: 3)),
      gradient: Gradients.coldLinear),
  new Torrent(
      torrentFileName: "Language pack for Windows 97",
      size: "50.35 MB",
      downloadingPercentage: 0.9,
      done: false,
      paused: true,
      status: "Downloading",
      seeders: ["287.1.3.119, 287.1.3.118, 287.1.3.117"],
      eta: DateTime.now().add(Duration(hours: 1)),
      gradient: LinearGradient(colors: [Colors.yellow,Colors.yellowAccent])),
  new Torrent(
      torrentFileName: "z/OS Software Package",
      size: "2.0 GB",
      downloadingPercentage: 1,
      paused: false,
      done: true,
      status: "Done",
      seeders: ["287.1.3.119, 287.1.3.118, 287.1.3.117"],
      eta: DateTime.now().add(Duration(hours: 0)),
      gradient: LinearGradient(colors: [Colors.green,Colors.greenAccent])),
  
  new Torrent(
      torrentFileName: "Why dart is amazing? by Nick",
      size: "205.0 MB",
      downloadingPercentage: 1,
      done: true,
      paused: false,
      status: "Done",
      seeders: ["287.1.3.119, 287.1.3.118, 287.1.3.117"],
      eta: DateTime.now().add(Duration(hours: 0)),
      gradient: LinearGradient(colors: [Colors.green,Colors.greenAccent])),
];
