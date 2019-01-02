import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      return _LoginPageState();
    }
}

class _LoginPageState extends State<LoginPage>{
  String _email;
  String _password;
  bool _accpetTerm = false;

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Sign In'),
          centerTitle: true,
          backgroundColor: Theme.of(context).accentColor,
        ),
        body: Container(
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
          child: Center(
            child: SingleChildScrollView(
              // padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.white
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  SwitchListTile(
                    title: Text(
                        'Accept Terms',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black
                        ),
                      ),
                    value: _accpetTerm,
                    onChanged: (bool value){
                      setState(() {
                        _accpetTerm = value;  
                      });
                    },
                  ), 
                  SizedBox(
                    height: 10.0,
                  ),
                  RaisedButton(
                    color: Theme.of(context).accentColor,
                    child: Text('Sign In'),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, 'homePage');
                    },
                  ),
                  Center(child: Text('Register'),)
                ],
              ),
            )
          ),
        )
      );
    }
}