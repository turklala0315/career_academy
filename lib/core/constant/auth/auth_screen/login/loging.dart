import 'package:career_academy/core/constant/colors/colors.dart';
import 'package:career_academy/core/constant/strings/string.dart';
import 'package:career_academy/core/constant/text_style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loging extends StatelessWidget {
  const Loging({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainblue,
        title: Row(
          children: [
            Image.asset('$staticAssets/logo.png', scale: 4),
            SizedBox(width: 10.w),
            Text('Career Academy', style: style26B),
          ],
        ),
      ),
      body: Column(children: []),
    );
  }
}
