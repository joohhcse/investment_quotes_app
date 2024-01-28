import 'package:flutter/material.dart';
import 'package:investment_quotes_app/screen/setting_screen.dart';
import 'package:investment_quotes_app/screen/favorite_list_screen.dart';
import 'package:investment_quotes_app/screen/quotes_screen.dart';
import 'package:investment_quotes_app/database/database_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  var db = new DatabaseHelper();



  // 각 탭에 해당하는 화면들
  final List<Widget> _children = [
    QuotesScreen(),
    FavoriteListScreen(likedQuote: 'aaa'),  // likedQuote에 like된 저장된 명언들 불러오기 
    SettingScreen()
  ];

  // 데이터베이스 초기화 및 데이터 로딩
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('하단바 메뉴 예제'),
      // ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            // icon: Icon(Icons.content_paste),
            icon: Icon(Icons.copy),
            label: '클립보드 복사',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '즐겨찾기',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '설정',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

// class SettingsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             // SettingsScreen()
//           ],
//         )
//       ),
//     );
//   }
// }
//
// class SettingRow extends StatelessWidget {
//   final IconData icon;
//   final String title;
//
//   const SettingRow({Key? key, required this.icon, required this.title})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         children: [
//           Icon(icon),
//           SizedBox(width: 16),
//           Text(
//             title,
//             style: TextStyle(fontSize: 16),
//           ),
//         ],
//       ),
//     );
//   }
// }