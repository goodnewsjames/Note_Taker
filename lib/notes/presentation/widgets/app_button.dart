import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.iconPath,
    required this.onpress,
    super.key,
  });
  final VoidCallback onpress;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpress,
      icon: SvgPicture.asset(iconPath),
    );
  }
}
