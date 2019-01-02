import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget{
  final Function addPlayer;

  CreatePage(this.addPlayer);

  @override
    State<StatefulWidget> createState() {
      return _CreatePageState();
    }
} 

class _CreatePageState extends State<CreatePage>{
  String _name;
  String _age;

  @override
    Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), BlendMode.dstATop
            )
          )
        ),
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (String value) {
                setState(() {
                  _name = value.trim();
                });
              },
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Number',
                filled: true,
                fillColor: Colors.white
              ),
              keyboardType: TextInputType.number,
              onChanged: (String value){
                setState(() {
                  _age = value.trim().toString();
                });
              },
            ),
            SizedBox(height: 10.0),
            RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('ADD'),
              onPressed: (){
                final Map<String, dynamic> player = {
                  'name': _name,
                  'age': _age
                };
                print('$player');
                _name = '';
                _age = '';
                widget.addPlayer(player);
              },
            )
          ],
        ),
      );
    }
}