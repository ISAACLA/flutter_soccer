import 'package:flutter/material.dart';

import 'new.dart';
import 'list.dart';

class ControllerPage extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      return _ControllerPageState();
    }
}

class _ControllerPageState extends State<ControllerPage>{
  List players = [];

  @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Menu'),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: (){
                    Navigator.pushReplacementNamed(context, 'homePage');
                  },
                )
              ],
            ),
          ),

          appBar: AppBar(
            title: Text('Controller'),
            bottom: TabBar(
            tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.add),
                  text: 'Add New Player',
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: 'Player List'
                )
              ],
            ),
          ),

          body: TabBarView(
            children: <Widget>[
              CreatePage(addPalyer),
              ListPage()
            ],
          )
        )
      );
    }

    void addPalyer(player){
      print ('fron controller, $player');
      setState(() {
        players.add(player);        
      });
    }
}