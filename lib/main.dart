import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: new ID(),
    ));

class ID extends StatefulWidget {
  @override
  _IDState createState() => _IDState();
}

class _IDState extends State<ID> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          title: new Text('ID Card'),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              level = level + 1;
            });
          },
        ),
        body: Padding(
          padding: new EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/pic.JPG'),
                  radius: 50.0,
                ),
              ),
              Divider(
                height: 50,
                color: Colors.amber,
              ),
              SizedBox(height: 20.0),
              Text(
                'Name',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    letterSpacing: 2.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Class Roll',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    letterSpacing: 2.0),
              ),
              SizedBox(height: 30.0),
              Text(
                'Your Points',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    letterSpacing: 2.0),
              ),
              Text(
                '$level',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.amber,
                    letterSpacing: 2.0),
              ),
              SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'Gaurav@mtouchlabs.com',
                    style: TextStyle(
                      color: Colors.deepOrange[300],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
