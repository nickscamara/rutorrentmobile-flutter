import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rutorrentmobile/screens/home_screen.dart';
import 'package:rutorrentmobile/screens/settings.dart';
import 'package:rutorrentmobile/screens/torrents_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedNavIndex = 0;
  List<Widget> _viewsByIndex;
  @override
  void initState() {
    _viewsByIndex = <Widget>[
      HomeScreen(),
      TorrentListScreen(),
      SettingsScreeen(),
    ];
    super.initState();
    _selectedNavIndex = 0;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NewChatButton(),
      body: _selectedNavIndex != 0 ? NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: false,
              pinned: true,
                expandedHeight: 100.0,
                flexibleSpace: const FlexibleSpaceBar(
                  title: Text('Torrents',style: TextStyle(color: Colors.white),),
                ),
               ),
          ];
        },
            
        body: _viewsByIndex[_selectedNavIndex],
      ): _viewsByIndex[_selectedNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).accentColor,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedNavIndex,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            title: Text('Torrents'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(
          //     Icons.person,
          //   ),
          //   title: Text('Profile'),
          // ),
        ],
      ),
    );
  }
}

class NewChatButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Theme.of(context).primaryColor,
            Theme.of(context).secondaryHeaderColor
          ]),
          borderRadius: BorderRadius.circular(50)),
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 25,
      ),
      padding: EdgeInsets.all(15),
    );
  }
}
