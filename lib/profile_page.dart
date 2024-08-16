import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:user_interface_tz/background_gradient_overlay.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final controller = PageController();
  final valueNotifer = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradientOverlay(
          child: SafeArea(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: ValueListenableBuilder(
                      valueListenable: valueNotifer,
                      builder: (context, value, child) {
                        return AnimatedSmoothIndicator(
                          onDotClicked: (index) {
                            valueNotifer.value = index;
                          },
                          count: 3,
                          activeIndex: value,
                          effect: SlideEffect(
                              spacing: 10.0,
                              radius: 4.0,
                              dotWidth: 50.0,
                              dotHeight: 8.0,
                              strokeWidth: 1.5,
                              dotColor: Colors.white.withOpacity(0.2),
                              activeDotColor: Colors.white),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.79, vertical: 8.66),
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.2199999988079071),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.99),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Удалить фото',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.05,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.2199999988079071),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.80),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 23,
                      ),
                      const Text(
                        'Выйти',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/icons/log_out.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          Center(
              child: SizedBox(
                  height: 180, child: Image.asset("assets/icons/hand_up.png"))),
          const Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Добавить ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: 'фото',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 377,
            width: double.infinity,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: const Alignment(0, -1),
                end: const Alignment(0, 1),
                stops: const [0, 0.13, 1],
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0.4),
                  Colors.black
                ],
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 23.04, vertical: 9.60),
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        end: Alignment(1, 0),
                        begin: Alignment(-1, 0),
                        colors: [Color(0xFFFF0000), Color(0xFF0500FF)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Мой пол 👧🏼👨‍',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.2,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Твое имя',
                    style: TextStyle(
                      color: Color(0xFFDDDDDD),
                      fontSize: 36,
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  ),
                  Row(
                    children: [
                      const Flexible(
                        child: Text(
                          'Напиши здесь три тезиса о себе и ИИ поможет сделать остальное',
                          softWrap: true,
                          style: TextStyle(
                            color: Color(0xFFD1C9C9),
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29),
                          ),
                        ),
                        child: const Text(
                          'AI',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.2,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 23.04, vertical: 9.60),
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.2199999988079071),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.80),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '🔥 Интересы',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19.20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 23.04, vertical: 9.60),
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '13.10.1991',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF9D9D9D),
                                fontSize: 19.20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.explore,
                        size: 38,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Места',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFF5F5F5),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 0.06,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 40,
                        child: Image.asset("assets/icons/add_box.png"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Поиск',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFF5F5F5),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 0.06,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                          height: 35,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.person),
                          )),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        'Профиль',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFF2F2F7),
                          fontSize: 16,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w500,
                          height: 0.06,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ))),
    );
  }
}
