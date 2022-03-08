import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Character Card',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
           title: Text("Yang Juna Sik"),
           centerTitle: true,
           backgroundColor: Colors.amber[700],
           elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/yang.jpg'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[850],
                thickness: 3.0,
                endIndent: 30.0,
                ),
              Text("NAME", 
              style: TextStyle(   
                color: Colors.white, 
                letterSpacing: 2.0,
              )
              ),

              SizedBox(
                height: 10.0,
                ),

              Text("Yang Jun Sik",  
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              )
              ),
              SizedBox(
                height: 30.0,
              ),

              Text("E-Mail", 
              style: TextStyle(   
                color: Colors.white, 
                letterSpacing: 2.0,
              )
              ),

              SizedBox(
                height: 10.0,
                ),

              Text("uigohiiming2@gmail.com",  
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              )
              ),

              SizedBox(
                height: 30.0
              ),

              // Column의 children안에 Row를 중첩, 그 안에 또 중첩 가능 
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('IOS & Swift', 
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0
                  ),
                  ),
                ],
                ),

                Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Flutter', 
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0
                  ),
                  ),
                ],
                ),

                Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('React-native', 
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0
                  ),
                  ),
                ],
                ),

                SizedBox(
                  height: 35.0,),

                Center(  
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/apple.png'),
                    radius: 40.0,
                    backgroundColor: Colors.amber[800],)
                )
            ]
            )
          )

    );
  }
}