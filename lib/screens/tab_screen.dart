import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TabPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // 하단 네비게이션 바
        bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex, // 기본 설정이 0

      // 눌렀을 때 동작 수행
      onTap: (index) {
        // setState에서 index를 받아서 화면을 갱신
        setState(() {
          _currentIndex = index;
        });
      },
      items: const [
        // 홈 버튼
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),

        // 검색 버튼
        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded),
          label: 'Search',
        ),

        // 마이 프로필 버튼
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
    ));
  }
}
