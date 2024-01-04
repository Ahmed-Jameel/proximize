import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proximize/components/default_button.dart';
import 'package:proximize/screens/login_page.dart';
import 'package:proximize/screens/privacy_policy.dart';
import 'package:proximize/screens/terms_and_conditions_page.dart';

class RegisterPage extends StatefulWidget {
   const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               const Align(
                 alignment: Alignment.centerLeft,
                 child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                  ),
                               ),
               ),
              const SizedBox(
                height: 40.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person_2_outlined,
                  ),
                  hintText: 'Username',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: const BorderSide(
                      color: Color(0xff805ad1),
                    ),
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                  ),
                  hintText: 'Email Address',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: const BorderSide(
                      color: Color(0xff805ad1),
                    ),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isHiddenPassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                    ),
                    onPressed: (){
                      setState(() {
                        isHiddenPassword = !isHiddenPassword;
                      });
                    },
                  ),
                  hintText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: const BorderSide(
                      color: Color(0xff805ad1),
                    ),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: isHiddenPassword,
              ),
              const SizedBox(
                height: 10.0,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(
                      text: 'By create an account, you agree to our ',
                    ),
                    TextSpan(
                      text: 'Terms & conditions ',
                      style: const TextStyle(
                        color: Color(0xff805ad1),
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return const TermsAndConditions();
                            }));
                      },
                    ),
                    const TextSpan(
                      text: 'and ',
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: const TextStyle(
                        color: Color(0xff805ad1),
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return const PrivacyPolicy();
                            }));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              DefaultButton(
                label: 'Continue',
                backgroundColor: const Color(0xff805ad1),
                onPressing: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 32.0,
                ),
                child: Text(
                  'OR',
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 60.0),
                  elevation: 0.0,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/apple.svg',
                  height: 32.0,
                  width: 32.0,
                ),
                label: const Text(
                  'Continue with Apple',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 60.0),
                  elevation: 0.0,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/google.svg',
                  height: 22.0,
                  width: 22.0,
                ),
                label: const Text(
                  'Continue with Google',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                  children: [
                    const TextSpan(
                      text: 'Have an account?',
                    ),
                    TextSpan(
                      text: 'Sign In',
                      style: const TextStyle(
                        color: Color(0xff805ad1),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const LoginPage();
                          }));
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
