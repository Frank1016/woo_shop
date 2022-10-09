import 'package:flutter/material.dart';
import 'package:woo_shop/common/assets.dart';
import 'package:woo_shop/pages/login.dart';

import '../common/button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  Padding _buildText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2B2A2A),
            height: 23 / 20),
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          //skip
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF2B2A2A),
                  fontWeight: FontWeight.w300),
            ),
          ),
          //spacing
          const Spacer(),
          //get started
          ButtonWidget(
            text: 'Get Started',
            width: 139,
            height: 42,
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildView(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //caption
        _buildText('Browse & Order All Products at Any Time'),

        const SizedBox(
          height: 70,
        ),

        //pic
        Image.asset(
          AssetsImages.welcomePng,
          height: 409,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 70,
        ),
        //buttons
        _buildButtons(context),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildView(context),
    );
  }
}
