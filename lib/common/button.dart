// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? text;
  final double? width;
  final double? height;
  final double? radius;
  final void Function()? onPressed;

  const ButtonWidget({
    Key? key,
    this.text,
    this.width,
    this.height,
    this.radius,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 32),
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            minimumSize: MaterialStateProperty.all(Size.zero),
          ),
          child: Text(
            text ?? '',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          )),
    );
  }
}
