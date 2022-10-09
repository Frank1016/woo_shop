import 'package:flutter/material.dart';
import 'package:woo_shop/common/app_colors.dart';
import 'package:woo_shop/common/assets.dart';
import 'package:woo_shop/common/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
// check if input valid
  bool isUserNameValid = false;

  //form
  Widget _buildForm() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 70, 20, 35),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //username or email
          const Text(
            'Username or E-Mail',
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15,
                color: Color(0xFF838383)),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            onChanged: (value) {
              //username = value
              setState(() {
                isUserNameValid = value.isNotEmpty && value.length > 6;
              });
            },
            decoration: InputDecoration(
              hintText: '@',
              prefixIcon: Image.asset(
                AssetsImages.userPng,
                width: 23,
                height: 23,
              ),
              suffixIcon: isUserNameValid
                  ? Image.asset(
                      AssetsImages.donePng,
                      width: 24,
                      height: 16,
                    )
                  : null,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          //password
          const Text(
            'Password',
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15,
                color: Color(0xFF838383)),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: '6 digits',
              prefixIcon: Image.asset(
                AssetsImages.passPng,
                width: 19,
                height: 26,
              ),
              suffixIcon: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot?',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0274BC)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //sign in
          ButtonWidget(
            text: 'Sign In',
            height: 57,
            onPressed: () {},
          ),
          const SizedBox(
            height: 15,
          ),
          //sign up
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //text hint
              const Text(
                'Don\'t have an account?',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF171717)),
              ),
              //TextButton
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0274BC)),
                  )),
            ],
          )
          //end
        ],
      ),
    );
  }

//main view
  Widget _buildView() {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //logo
        Image.asset(
          AssetsImages.logoPng,
          width: 60,
          height: 57,
        ),
        const SizedBox(
          height: 22,
        ),
        //main title
        const Text(
          'Let\'s Sign You In',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 10,
        ),
        //subtitle
        const Text(
          'Welcome back, you’ve been missed',
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
              color: Color(0xFFEEEEEE)),
        ),
        const SizedBox(
          height: 55,
        ),
        //form
        _buildForm(),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSplash,
      body: _buildView(),
    );
  }
}
