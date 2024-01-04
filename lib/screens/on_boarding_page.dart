import 'package:flutter/material.dart';
import 'package:proximize/components/default_button.dart';
import 'package:proximize/components/page_view_component.dart';
import 'package:proximize/models/on_boarding_model.dart';
import 'package:proximize/screens/login_page.dart';
import 'package:proximize/screens/register_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({super.key});

  final pageController = PageController();
  final List<OnBoardingModel> onBoardingModels = const [
    OnBoardingModel(
      image: 'assets/images/onboard1.png',
      onBoardingTitle: 'Track your work, get results.',
      onBoardingDescription1: 'Never let an important task slip through the',
      onBoardingDescription2: 'cracks and impress with your task',
      onBoardingDescription3: 'management abilities.',
    ),
    OnBoardingModel(
      image: 'assets/images/onboard2.png',
      onBoardingTitle: 'Stay organized projects',
      onBoardingDescription1: 'Leverage the products cross-platform',
      onBoardingDescription2: 'capabilities to manage tasks from',
      onBoardingDescription3: 'anywhere, at anytime.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return RegisterPage();
              }));
            },
            child: const Text(
              'Skip',
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  itemBuilder: (context, index) {
                    return PageViewComponent(
                      model: onBoardingModels[index],
                    );
                  },
                  itemCount: onBoardingModels.length,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(56.0),
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: onBoardingModels.length,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xff805ad1),
                    dotColor: Colors.white,
                    dotHeight: 8.0,
                    dotWidth: 12.0,
                  ),
                ),
              ),
               DefaultButton(
                label: 'Sign Up',
                backgroundColor: const Color(0xff805ad1),
                onPressing: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const RegisterPage();
                  }));
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
               DefaultButton(
                label: 'Sign In',
                 onPressing: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return const LoginPage();
                   }));
                 },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
