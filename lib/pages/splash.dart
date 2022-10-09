import 'package:flutter/material.dart';
import 'package:woo_shop/common/app_colors.dart';
import 'package:woo_shop/common/assets.dart';
import 'package:woo_shop/pages/welcome.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  //counting var
  final duration = 10;
  int number = 0;
  //counting function
  Future<void> _countdown() async {
    number = duration;
    for (var i = 0; i < duration; i++) {
      await Future.delayed(const Duration(seconds: 1), () {
        if (mounted) {
          setState(() {
            number--;
          });
        }
      });
    }
    if (number == 0 && mounted) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const WelcomePage(),
          ));
    }
  }

  @override
  void initState() {
    super.initState();
    _countdown();
  }

//logo
  Widget _buildLogo() {
    return Stack(
      alignment: Alignment.center,
      children: [
        //background
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(120 / 2)),
        ),
        //logo pic
        Image.asset(
          AssetsImages.logoPng,
          width: 84,
          height: 80,
        ),
      ],
    );
  }

//Text
  Text _buildText(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 19,
          //fontFamily: "Poppins",
          fontWeight: FontWeight.bold,
          color: Colors.white,
          height: 22 / 19),
    );
  }

  //main view
  Widget _buildView(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          _buildLogo(),
          const SizedBox(
            height: 24,
          ),
          //title
          _buildText('Online Market'),
          const SizedBox(
            height: 27,
          ),
          //counter
          _buildText(number > 0 ? '$number' : 'done'),

          //end
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSplash,
      body: _buildView(context),
    );
  }
}
