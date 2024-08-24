import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:user_interface_tz/pages/search_page.dart';
import 'package:user_interface_tz/widgets/swipable_card.dart';

import 'models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 927),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Swipable Card'),
          ),
          body: Center(
            child: SwipableCard(
              user: User(
                image: "assets/images/source_avatar.jpeg",
                name: "Ангелина",
                age: 24,
                desc:
                    "Привет 👋🏻 Ищу ребят в маркетинге, готова поделится и дать потенциальных клиентов для вас, если ср",
                interests: interestList,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
