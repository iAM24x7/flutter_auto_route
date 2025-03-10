// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_auto_route/common/constants/colors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;
  const RoundButton({
    required this.title,
    this.loading = false,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 40,
        width: 200,
        decoration: BoxDecoration(
          color: AppColor.kBadgeColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child:
              loading
                  ? CircularProgressIndicator(color: Colors.white)
                  : Text(title, style: TextStyle(color: AppColor.kBgDarkColor)),
        ),
      ),
    );
  }
}
