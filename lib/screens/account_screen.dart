import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Clone'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.exit_to_app,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    const SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://img.extmovie.com/files/attach/images/148/873/786/091/c8d055c9df5123aa483e3324d81a54fa.jpg'),
                      ),
                    ),

                    // 버튼 크기를 이미지 크기와 동일하게 만들어야만 alignment가 적용이 됨
                    Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: 25,
                        height: 25,
                        child: FloatingActionButton(
                          onPressed: () {
                            // 버튼이 눌렸을 때 실행될 코드
                          },
                          backgroundColor:
                              Colors.transparent, // 버튼의 배경 색상을 투명으로 설정
                          elevation: 0,
                          child: Container(
                            width: 56.0, // 버튼의 너비
                            height: 56.0, // 버튼의 높이
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue, // 파란색으로 설정
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white, // 아이콘의 색상을 흰색으로 설정
                              ),
                            ),
                          ), // 그림자를 제거
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'im_winter',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Text(
                  '게시물',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  '3',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Text(
                  '팔로워',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  '188',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Text(
                  '팔로잉',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  '297',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
