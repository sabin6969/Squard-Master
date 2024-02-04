import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projectmanagement_for_project_manager/main.dart';

class OnboardingContainer extends StatelessWidget {
  final String imagePath;
  final String text;
  const OnboardingContainer({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height - 100.h,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250.h,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imagePath,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
