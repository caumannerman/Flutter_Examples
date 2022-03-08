# Flutter_Examples

### Flutter 2.0의 Null safety 





## 1. Profile page

<img width="200" alt="스크린샷 2022-03-07 오후 5 27 35" src="https://user-images.githubusercontent.com/75043852/156994991-c7bb37cb-f20a-4806-b774-dc3d825cd60b.png">

### Padding( padding: EdgeInsets.fromLTRB( 30.0, 40.0, 0.0, 0.0) ) -> Padding 위젯 내부의 패딩 적용 
### Column() 위젯 : Vertical한 Linear view 구성, children인자에 세로로 정렬할 Widget들을 전달
##### -> crossAxisAlignment, mainAxisAlignment로 해당 정렬 내에서 상하/ 좌우 정렬 설정 가능  ex) crossAxisAlignment: CrossAxisAlignment.start
### Text("text", style: TextStyle( color:, letterSpacing:,.... ))과 같이 텍스트 Widget의 스타일 변경 
### SizedBox() : height, width 등의 인자로, 시각적으로 빈 공간으로서 Widget 사이 거리 조절
### Icon(Icons.~~~)로 아이콘 사용 가능 
### CircleAvatar( backgroundImage: AssetImage(), radios: 30.0 ) 과 같이 이미지를 원형으로 사용할 수 있다.

## 2. Flutter_AppBar_Drawer

<p>
  <img width="200" alt="스크린샷 2022-03-08 오후 6 15 54" src="https://user-images.githubusercontent.com/75043852/157205848-41858d18-b3f6-4f94-b529-839088e0b3e6.png">
<img width="200" alt="스크린샷 2022-03-07 오후 10 10 40" src="https://user-images.githubusercontent.com/75043852/157040904-a8218eaa-5c99-483e-a894-79bd625cd7d9.png">
</p>

## 3. BuildContext란?

### -> A handle to the location of a widget in the widget tree
### -> 즉 , widget tree에서 widget의 위치를 알 수 있는 정보 그 자체
### -> Each widget has its own BuildContext, which becomes the parent of the widget returned by the StatelessWidget.build or State.build function
##### -> build메서드를 통해 Scaffold위젯이 return될 때, Scaffold위젯은 부모 위젯의 context를 그대로 물려받게 된다. 
##### -> 사용: ScaffoldMessenger.of(context) 메서드 : Something.of(context) method는 거슬러 올라가며 가장 가까운 something을 찾아서 반환한다. 

## 4. SnackBar, ToastMessage


## 5. Flutter Container

### -> Container 위젯의 특징:  Container with no children try to be as big as possible & Containers with children size themselves th their children.

## 6. Column, Row Widget

### -> Row, Column 위젯 모두 내부에 들어갈 하위 위젯들을 children 프로퍼티에 배열 형태로 전달한다. 
### -> 내부 요소들의 정렬은 verticalDirection (내부 요소들의 순서), mainAxisAlignment ( column의 경우 세로, Row의 경우 가로 ) , crossAxisAlignment:  ( mainAxisAlignment와 반대 )

## 7. Navigator

### -> navigator manages a stack of Route objects, like Navigator.push, Navigator.pop
### -> In Flutter routes are just "screens" or "pages" that reveal contents via full-screen elements
