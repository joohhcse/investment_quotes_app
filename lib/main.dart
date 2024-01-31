import 'package:investment_quotes_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {

  //////https://stackoverflow.com/questions/76158800/databasefactory-not-initialized-when-using-sqflite-in-flutter
  // // Initialize FFI
  // sqfliteFfiInit();
  // databaseFactory = databaseFactoryFfi;

  //sqflite 참고
  ////https://sudarlife.tistory.com/entry/Flutter-%ED%94%8C%EB%9F%AC%ED%84%B0-SQFlite-%EB%AC%B8%EC%84%9C-%EC%A0%95%EB%A6%AC-%EB%B0%8F-%EC%98%88%EC%A0%9C%EB%A1%9C-%EB%A7%88%EC%8A%A4%ED%84%B0%ED%95%B4%EB%B3%B4%EC%9E%90

  //totally 개발자 참고
  //https://totally-developer.tistory.com/125

  //https://iosroid.tistory.com/44

  runApp(
    MaterialApp(
      home: HomeScreen(),
    )
  );
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;
//
//   // 각 탭에 해당하는 화면들
//   final List<Widget> _children = [
//     ClipboardScreen(),
//     FavoritesScreen(),
//     SettingsScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('하단바 메뉴 예제'),
//       ),
//       body: _children[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: onTabTapped,
//         items: [
//           BottomNavigationBarItem(
//             // icon: Icon(Icons.content_paste),
//             icon: Icon(Icons.copy),
//             label: '클립보드 복사',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: '즐겨찾기',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: '설정',
//           ),
//         ],
//       ),
//     );
//   }
//
//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
// }
//
// class ClipboardScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('클립보드 복사 화면'),
//     );
//   }
// }
//
// class FavoritesScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('즐겨찾기 화면'),
//     );
//   }
// }
//
// class SettingsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       // child: Text('설정 화면'),
//       child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 1,
//           )
//           , itemBuilder: (context, index) {
//             return GestureDetector(
//
//           );
//         }
//       )
//     );
//   }
// }
