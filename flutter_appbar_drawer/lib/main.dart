import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

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
          actions: [
            IconButton(
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
          ]),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(

                  // height: 50.0,

                  child: Text("Snack Bar Button"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellowAccent,
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Flutter 2.0 SnackBar!"),
                        backgroundColor: Colors.black,
                        duration: Duration(seconds: 5),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {},
                        )));
                  }),
              ElevatedButton(
                  //width: 100.0,
                  // height: 50.0,

                  child: Text("Toast Button"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellowAccent,
                    primary: Colors.red,
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: 'Fllutter 토스트 메시지',
                      gravity: ToastGravity.CENTER,
                      backgroundColor: Colors.blueAccent,
                      fontSize: 20.0,
                      textColor: Colors.brown,
                      toastLength: Toast.LENGTH_LONG,
                    );
                  }),
              TextButton(
                onPressed: () {
                  print("TextButton clicked");
                },
                onLongPress: () {
                  print("TextButton Long clicked");
                },
                child: Text(
                  'Text Button',
                  style: TextStyle(fontSize: 20.0),
                ),
                style: TextButton.styleFrom(
                    primary: Colors.lime, backgroundColor: Colors.blue),
                
              ),

              ElevatedButton(
                onPressed: (){
                  print("elevated Button");
                },
                child: Text("Elevated Button"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  elevation: 5.0
                ),
                ),

                // OutlinedButton(
                //   onPressed: (){ 
                //     print("Outlined Button");
                //   },
                //   child: Text("Outlined button"),
                //   style: OutlinedButton.styleFrom(
                //     primary: Colors.green,
                //     side: BorderSide
                //   )
                //   ,)

                  ElevatedButton.icon(
                    onPressed: (){
                      print("icon button clicked");
                    },
                    icon: Icon( 
                      Icons.home,
                      size: 30.0,
                      color: Colors.black87,
                    ),
                    label: Text("Icon click"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      minimumSize: Size(200, 50),
                      shape: RoundedRectangleBorder( 
                        borderRadius: BorderRadius.circular( 10.0)
                      )
                    )
                    

                    )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("FloatingActionButton & SnackBar!"),
              duration: Duration(seconds: 5),
            ),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
            //safeArea무시
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/yang.jpg'),
                  backgroundColor: Colors.blue,
                ),
                //다른 계정 사진을 넣어주는 named property
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/apple.png'),
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/apple.png'),
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/apple.png'),
                    backgroundColor: Colors.white,
                  ),
                ],
                accountName: Text("JunSikYang"),
                accountEmail: Text("uigohiiming2@gmail.com"),
                // 이메일 옆 화살표 버튼 구현
                onDetailsPressed: () {
                  print("arrow button clicked!!");
                },
                decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    )),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[850],
                ),
                title: Text('Home'),
                onTap: () {
                  print('Home icon Clicked!!');
                },
                trailing: Icon(Icons.add, color: Colors.black),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: Text('Setting'),
                onTap: () {
                  print('Setting icon Clicked!!');
                },
                trailing: Icon(Icons.add, color: Colors.black),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: Text('Q&A'),
                onTap: () {
                  print('Q&A icon Clicked!!');
                },
                trailing: Icon(Icons.add, color: Colors.black),
              )
            ]),
      ),
    );
  }
}
