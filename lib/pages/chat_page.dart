import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_interface_tz/pages/chat_detail.dart';
import 'package:user_interface_tz/widgets/chat_tile.dart';
import 'package:user_interface_tz/widgets/title.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppbarTitle(text: "Чаты"),
        SizedBox(
          height: 5.h,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(20.r))),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ChatTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatDetail(),
                        ));
                  },
                  image: "assets/images/avatar.png",
                  message: 'Пока изучаю вопрос, ожидайте',
                  name: 'Георгий',
                  unreadMessages: 1,
                  time: 'Сейчас',
                );
              },
              itemCount: 10,
            ),
          ),
        ),
      ],
    );
  }
}
