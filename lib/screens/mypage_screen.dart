import 'package:flutter/material.dart';
import 'package:mapchatfe/screens/profile_screen.dart';
import 'package:mapchatfe/widgets/mypage_row.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: const Color(0xFF9747FF),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit_square),
          )
        ],
        title: const Text(
          "마이페이지",
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: NetworkImage("https://picsum.photos/70")),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "권혁준",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "활성",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () => {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image:
                                      NetworkImage("https://picsum.photos/50")),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          ":smile:",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const MypageRow(
                icon: Icons.notifications_off_outlined, item: "알림 일시 중지"),
            const SizedBox(
              height: 9,
            ),
            const MypageRow(
                icon: Icons.person_outline_rounded, item: "자신을 자리 비움으로 설정"),
            const SizedBox(
              height: 9,
            ),
            const MypageRow(
                icon: Icons.people_outline_rounded, item: "친구 초대하기"),
            const SizedBox(
              height: 9,
            ),
            const MypageRow(icon: Icons.person_outline_rounded, item: "프로필 보기"),
            const SizedBox(
              height: 9,
            ),
            const MypageRow(icon: Icons.app_settings_alt_outlined, item: "알림"),
            const SizedBox(
              height: 9,
            ),
            const MypageRow(icon: Icons.settings_outlined, item: "환경 설정"),
          ]),
        ),
      ),
    );
  }
}
