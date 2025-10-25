import 'package:e_education/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(const Onboarding());
}

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              "Welcome to EduLearn",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            body:
                "Discover a new way to learn anytime, anywhere. Join thousands of learners upgrading their skills with interactive lessons and expert guidance.",
            image: Image.asset("images/first.jpg", height: 400, width: 400),
          ),
          PageViewModel(
            titleWidget: Text(
              "Interactive Learning",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            body:
                "Explore a wide range of subjects through videos, quizzes, and assignments designed to make learning fun and effective.",
            image: Image.asset("images/second.jpg", height: 400, width: 400),
          ),
          PageViewModel(
            titleWidget: Text(
              "Track Your Progress",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            body:
                "Monitor your learning goals and achievements with personalized dashboards and daily progress reports.",
            image: Image.asset("images/thired.jpg", height: 400, width: 400),
          ),
        ],
        onDone: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        onSkip: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.indigo,
          ),
        ),
        next: Icon(Icons.arrow_forward, color: Colors.indigo),
        done: Text(
          "Done",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.indigo,
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size.square(10.0),
          activeSize: Size(20.0, 10.0),
          color: Colors.black,
          activeColor: Colors.indigo,
          spacing: EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
