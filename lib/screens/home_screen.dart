import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Clone'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Instagram에 오신 것을 환영합니다.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '사진과 동영상을 보려면 팔로우하세요',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(
                    16.0), // 카드 위젯 안에 컬럼 위젯을 padding 전체 16으로 설정
                child: Column(
                  children: [
                    // 프로필 설정
                    const SizedBox(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://img.extmovie.com/files/attach/images/148/873/786/091/c8d055c9df5123aa483e3324d81a54fa.jpg'),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // 주소와 닉네임 설정
                    const Text(
                      'tktwin00@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      'Taekki Min',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 20),

                    // 인스타 피드 설정
                    Row(
                      mainAxisSize: MainAxisSize.min, // Row는 화면을 꽉 채우는 속성을 가짐
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover, // 비율 크기에 맞게끔 채워주게 설정
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWEhCs-I8QQ-NZZCocEVZt-CE-KR8soaZKVw&usqp=CAU',
                        ),
                        const SizedBox(width: 5),
                        Image.network(
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj1kilFfZEwPRjr5O26jfoCFy3s5FY-hYufw&usqp=CAU',
                        ),
                        const SizedBox(width: 5),
                        Image.network(
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpitQIB5Y2yIZBmfOKlVxQyYEm65RBVHxPPQ&usqp=CAU',
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Facebook 친구',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 20),

                    // 팔로우 버튼 설정
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: // 버튼 배경색 설정
                            MaterialStateProperty.all<Color>(Colors.blue),
                        foregroundColor: // 버튼 텍스트 색 설정
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: // 버튼 모서리 둥근 정도 설정
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      child: const Text('팔로우'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
