import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../models/onboarding_page_data.dart';

class OnboardingPage extends StatelessWidget {
  final OnBoardingPageData data;
  final PageController controller;
  final int index;
  final int total;

  const OnboardingPage({
    super.key,
    required this.data,
    required this.controller,
    required this.index,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            data.imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 60,
          left: 24,
          right: 24,
          child: Text(
            data.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
              height: 1.3,
              letterSpacing: 0.6,
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 24,
          right: 24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmoothPageIndicator(
                controller: controller,
                count: total,
                effect: const SwapEffect(
                  type: SwapType.yRotation,
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: Color(0xFFFF6A2C),
                  dotColor: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.jumpToPage(total - 1);
                    },
                    child: const Row(
                      children: [
                        Text(
                          "Skip",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 6),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Color(0xFFFF6A2C),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 18,
                      ),
                      onPressed: () {
                        if (index < total - 1) {
                          controller.jumpToPage(index + 1);
                        } else {
                          Navigator.of(context).pushNamed('/signup');
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

