import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:user_interface_tz/background_gradient_overlay.dart';
import 'package:user_interface_tz/profile_page.dart';

class InterestPage extends StatefulWidget {
  const InterestPage({super.key});

  @override
  State<InterestPage> createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> {
  final userInterest = <Interests>[];
  final userInterest2 = <Interests>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Мои интересы',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFF2F2F7),
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: BackgroundGradientOverlay(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                    'умею в',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.74),
                      fontSize: 21,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w400,
                      height: 0.05,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: [
                    for (var interest in interestList)
                      Builder(builder: (context) {
                        final isAdded = userInterest.contains(interest);
                        return GestureDetector(
                          onTap: () {
                            if (userInterest.contains(interest)) {
                              userInterest.remove(interest);
                            } else {
                              userInterest.add(interest);
                            }
                            setState(() {});
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 6),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color:
                                    isAdded ? Colors.white : Colors.transparent,
                                border: isAdded
                                    ? null
                                    : Border.all(
                                        width: 1,
                                        color: Colors.black.withOpacity(0.2),
                                      ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    interest.emoji,
                                    style: const TextStyle(
                                      color: Color(0xFFF2F2F7),
                                      fontSize: 21,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    interest.word,
                                    style: TextStyle(
                                      color: isAdded
                                          ? Colors.black
                                          : const Color(0xFFF2F2F7),
                                      fontSize: 21,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      })
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'имею',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.74),
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: [
                    for (var interest in interestList2)
                      Builder(builder: (context) {
                        final isAdded = userInterest2.contains(interest);
                        return GestureDetector(
                          onTap: () {
                            if (userInterest2.contains(interest)) {
                              userInterest2.remove(interest);
                            } else {
                              userInterest2.add(interest);
                            }
                            setState(() {});
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 6),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color:
                                    isAdded ? Colors.white : Colors.transparent,
                                border: isAdded
                                    ? null
                                    : Border.all(
                                        width: 1,
                                        color: Colors.black.withOpacity(0.2),
                                      ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    interest.emoji,
                                    style: const TextStyle(
                                      color: Color(0xFFF2F2F7),
                                      fontSize: 21,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    interest.word,
                                    style: TextStyle(
                                      color: isAdded
                                          ? Colors.black
                                          : const Color(0xFFF2F2F7),
                                      fontSize: 21,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      })
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilePage()));
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 16),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    color: Colors.white,
                    child: const SizedBox(
                      width: 356,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Отправится в ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                                height: 0.05,
                              ),
                            ),
                            TextSpan(
                              text: 'DealMeet',
                              style: TextStyle(
                                color: Color(0xB71B1F26),
                                fontSize: 21,
                                fontWeight: FontWeight.w500,
                                height: 0.05,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Interests extends Equatable {
  final String emoji;
  final String word;

  const Interests({required this.emoji, required this.word});

  @override
  List<Object?> get props => [emoji, word];
}

List<Interests> interestList = [
  const Interests(emoji: '💻', word: 'Технологии'),
  const Interests(emoji: '📺', word: 'Маркетинг'),
  const Interests(emoji: '🎨', word: 'Искусство'),
  const Interests(emoji: '💰', word: 'Финансы'),
  const Interests(emoji: '❤️', word: 'Здравоохранение'),
  const Interests(emoji: '⚡', word: 'Энергетика'),
  const Interests(emoji: '🌱', word: 'Э-commerce'),
  const Interests(emoji: '📚', word: 'Образование'),
];

List<Interests> interestList2 = [
  const Interests(emoji: '✨', word: 'Фриланс'),
  const Interests(emoji: '⭐', word: 'Стартапы'),
  const Interests(emoji: '🌟', word: 'Бизнесы'),
  const Interests(emoji: '🔥', word: 'Крупный бизнес'),
];
