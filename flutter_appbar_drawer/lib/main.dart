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
        centerTitle: true,
        elevation: 0.0,

        //leading은 appBar 좌측에 아이콘 놓고싶은 경우, Scaffold에 drawer를 달아주면, 알아서 leading자리에 메뉴 버튼이 생긴다!

        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () { 
        //     print('menu button is clicked');
        //    },
        //   ),

         // actions는 appBar 우측에 아이콘 놓고싶은 경우
          actions: [IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () { 
              print('shopping cart button is clicked');
            },
            ),
            //IconButton은 Icon과 onPressed 함수를 인자로 받는다.
            IconButton(
            icon: Icon(Icons.search),
            onPressed: () { 
              print('search button is clicked');
            },
            ),
          ]
        ),
        drawer: Drawer(
          child: ListView(
            //safeArea무시 
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/yang.jpg'),
                backgroundColor: Colors.blue,
              ), 
              accountName: Text("JunSikYang"),
              accountEmail: Text("uigohiiming2@gmail.com"),
              // 이메일 옆 화살표 버튼 구현
              onDetailsPressed: (){
                print("arrow button clicked!!");
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                 
                )
              ),

              )
            ]
          ),
        ),
    );
  }
}