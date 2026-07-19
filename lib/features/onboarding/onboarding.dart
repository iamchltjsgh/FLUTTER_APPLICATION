import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Welcome to My App',
          body: 'This is the first page of the onboarding process.',
          image: Image.asset('assets/onboarding/images.jpeg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Welcome to My App',
          body: 'This is the second page of the onboarding process.',
          image: Image.asset('assets/onboarding/images-2.jpeg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Welcome to My App',
          body: 'This is the third page of the onboarding process.',
          image: Image.asset('assets/onboarding/images-3.jpeg'),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text('Done'),
      onDone: () {
        Navigator.of(
          context,
        ).pushReplacement(
          MaterialPageRoute(builder: (context) => const OnboardingHomePage()),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('Skip'),
      dotsDecorator: const DotsDecorator(
        color: Colors.green,
        size: Size.square(10),
        activeSize: Size(20, 10),
        activeColor: Colors.green,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      curve: Curves.bounceOut,
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
      imagePadding: EdgeInsets.all(24),
      pageColor: Colors.white,
    );
  }
}
