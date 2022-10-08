import 'package:flutter/material.dart';
import 'package:woo_shop/common/app_colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  //main view
  Widget _buildView(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Container(
            color: Colors.white,
            width: 120,
            height: 120,
          ),
          //title
          const Text('Online Market'),
          //counter
          const Text('10'),
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
