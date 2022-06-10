import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_large_text.dart';

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
                    children: [AppLargeText(text: 'Trips')],
                  )
                ]),
              ),
            );
          }),
    );
  }
}
