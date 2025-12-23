import 'package:expiry_tracker/screens/onboarding_flow.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/onB1.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 80,
              left: 24,
              right: 24,
              child: Text(
                'Track Expiry Dates,\nMake Informed \nChoices!',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  height: 1.3,
                ),
              )
          ),
          Positioned(
            bottom: 60,
            left: 24,
            right: 24,
            child: SizedBox(
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => OnBoardingFlow()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF6A2C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 6,
                ),
                child: const Text(
                  'GET STARTED',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
