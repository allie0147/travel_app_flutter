import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List welcomeImages = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: welcomeImages.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/${welcomeImages[index]}'),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                    top: 150, left: 20, right: 20),
                child: Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: 'Trips'),
                      AppText(
                        text: 'Mountain',
                        size: 30,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 250,
                        child: AppText(
                          text:
                              'Mountain hikes give you an incredible sense of freedom along with endurance tests',
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ResponsiveButton(
                        width: 120,
                      )
                    ],
                  )
                ]),
              ),
            );
          }),
    );
  }
}
