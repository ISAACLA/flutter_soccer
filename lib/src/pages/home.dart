import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Directory')
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Controller'),
                onTap: (){
                  Navigator.pushReplacementNamed(context, 'controllerPage');
                },
              )
            ],
          ),
        ),

        appBar: AppBar(
          title: Text('Home Page'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.exit_to_app),
              color: Colors.white,
              onPressed: () => _signOff(context)
            )
          ],
        ),
        body: Center(
          child: Text('home Page'),
        ),
      );
    }


    _signOff(BuildContext context){
      showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Sign Off'),
            content: Text('Are you sure you want to sign off?'),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancel',style: TextStyle(color: Colors.black),),
                color: Theme.of(context).accentColor,
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('Sign Off', style: TextStyle(color: Colors.black),),
                color: Colors.redAccent,
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/');
                },
              )
            ],
          );
        }
      );
    }

}