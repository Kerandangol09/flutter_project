import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.red,
      ),
      home: Scaffold(appBar:AppBar(title:Text(' Awsome App'),),
      drawer: new Drawer(
        child: new ListView(
           children: <Widget>[
             new UserAccountsDrawerHeader(
               accountName: new Text('Keran Dangol'),
               accountEmail: new Text('kas143@gmailcom'),
               currentAccountPicture: new GestureDetector(
                 onTap: () => print("This is the current user"),
                 child: new CircleAvatar(
                   backgroundImage: new NetworkImage("https://images.wallpaperscraft.com/image/subaru_impreza_wrx_sti_subaru_tuning_blue_98578_3840x2400.jpg"),            
                  )
               ),
               
             ),
             
             new ListTile(
               title: Text('First Page'),
               trailing: new Icon(Icons.arrow_upward),
             ),
             new ListTile(
               title: Text('Second Page'),
               trailing: new Icon(Icons.arrow_right),
             ),
             new Divider(),
             new ListTile(
               title: Text('Close'),
               trailing: new Icon(Icons.cancel),
             )
           ],
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
       
        Image.asset('assets/w.jpg')
      ],)
      ) 
        
      
      
    );
  }
}

