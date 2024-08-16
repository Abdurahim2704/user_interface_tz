import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:user_interface_tz/background_gradient_overlay.dart';
import 'package:user_interface_tz/emojis.dart';
import 'package:user_interface_tz/interest_page.dart';
import 'package:user_interface_tz/login_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BackgroundGradientOverlay(
        child: SafeArea(
          child: Column(
            children: [
              EmojiLayout(),
              const SizedBox(
                height: 20,
              ),
              Container(
                constraints:
                    const BoxConstraints(maxWidth: 120, maxHeight: 120),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(1, 0),
                    end: Alignment(0, 1),
                    colors: [
                      Color(0xFF0400CF),
                      Color(0xFFE9008B),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const AspectRatio(
                  aspectRatio: 1,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'D',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 77.61,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'DealMeet',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 41,
                        height: 1,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: ' - приложение для знакомств в ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 41,
                        height: 1,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'бизнес сфере',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 41,
                        height: 1,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Встречайте людей по своим интересам, находите бизнес завтраки и другие различные мероприятия',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontFamily: 'SF Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Spacer(),
              LoginButton(
                iconData: const Icon(
                  FontAwesomeIcons.vk,
                  size: 29,
                  color: Color(0xff1976D2),
                ),
                name: "Вход через VK",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InterestPage()));
                },
              ),
              const SizedBox(
                height: 5,
              ),
              LoginButton(
                iconData: SvgPicture.asset("assets/icons/google_icon.svg"),
                name: "Вход через Google",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InterestPage()));
                },
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
