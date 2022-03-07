import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        //centerTitle: true,
        elevation: 0.0,
        //leading은 appBar 좌측에 아이콘 놓고싶은 경우 
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () { 
            print('menu button is clicked');
           },
          ),
         // actions는 appBar 우측에 아이콘 놓고싶은 경우
          actions: [IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () { 
              print('shopping cart button is clicked');
            },
            ),
            IconButton(
            icon: Icon(Icons.search),
            onPressed: () { 
              print('search button is clicked');
            },
            ),
            
          ],

        ),
    );
  }
}