import 'package:flutter/material.dart';

import '../models/onboarding_page_data.dart';
import '../pages/onboarding_page.dart';

class OnBoardingFlow extends StatefulWidget {
  const OnBoardingFlow({super.key});

  @override
  State<OnBoardingFlow> createState() => _OnBoardingFlowState();
}

class _OnBoardingFlowState extends State<OnBoardingFlow> {
  final PageController _controller = PageController();

  final List<OnBoardingPageData> pages = [
    OnBoardingPageData(
      title: "SIMPLIFY YOUR PRODUCT\nORGANIZATION",
      imagePath: "assets/images/onB2.png",
    ),
    OnBoardingPageData(
      title: "EFFORTLESS EXPIRY\nTRACKING",
      imagePath: "assets/images/onB3.png",
    ),
    OnBoardingPageData(
      title: "TRACK ALL YOUR \nPRODUCTS IN ONE APP",
      imagePath: "assets/images/onB4.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  return OnboardingPage(
                    data: pages[index],
                    controller: _controller,
                    index: index,
                    total: pages.length,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
