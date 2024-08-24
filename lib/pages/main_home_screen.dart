import 'package:flutter/material.dart';
import 'package:user_interface_tz/pages/chat_page.dart';
import 'package:user_interface_tz/pages/place_page.dart';
import 'package:user_interface_tz/pages/profile_page.dart';
import 'package:user_interface_tz/pages/search_page.dart';
import 'package:user_interface_tz/tab_manager.dart';
import 'package:user_interface_tz/widgets/background_gradient_overlay.dart';

import '../widgets/bottomnavbar.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({
    super.key,
  });

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  final controller = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundGradientOverlay(
      child: ValueListenableBuilder(
        valueListenable: TabManager.selectedIndex,
        builder: (context, value, child) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            extendBody: value == 3,
            backgroundColor: Colors.transparent,
            body: SafeArea(
                bottom: false,
                child: Column(
                  children: [
                    Expanded(
                      child: ValueListenableBuilder<int>(
                          valueListenable: TabManager.selectedIndex,
                          builder: (context, value, child) {
                            if (value == 3) {
                              return ChatPage();
                            }
                            return PageView(
                              controller: controller,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                PlacePage(),
                                SearchPage(),
                                ProfilePage(),
                                // ChatPage(),
                              ],
                            );
                          }),
                    ),
                  ],
                )),
            bottomNavigationBar: ValueListenableBuilder(
                valueListenable: TabManager.selectedIndex,
                builder: (context, value, child) {
                  // if (value == 0) {
                  //   return SizedBox.shrink();
                  // }
                  return Bottomnavbar(
                    controller: controller,
                  );
                }),
          );
        },
      ),
    );
  }
}
