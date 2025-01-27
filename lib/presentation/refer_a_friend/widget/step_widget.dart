import 'package:byco_task/presentation/resources/colors/colors.dart';
import 'package:byco_task/presentation/refer_a_friend/widget/dottline.dart';
import 'package:byco_task/presentation/resources/textsyle/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StepWidget extends StatelessWidget {
  final String stepNumber;
  final String title;
  final String imagePath;

  const StepWidget({
    super.key,
    required this.stepNumber,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 27.w),
          child: Row(
            children: [
              // Step Number & Text
              Container(
                width: 64.w,
                height: 64.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.skyWhite,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 1),
                      blurRadius: 20,
                      spreadRadius: 1,
                      color: AppColors.skyLight,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    stepNumber,
                    style: AppTextStyle.largeBold,
                  ),
                ),
              ),
              SizedBox(width: 16.w), // Add spacing between the circle and text
              Expanded(
                child: Text(
                  title,
                  style: AppTextStyle.regularMedium
                      .copyWith(color: AppColors.inkDarkest),
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Positioned(
              left: 59.5.w,
              top: 0,
              bottom: 0,
              child: stepNumber == "3"
                  ? SizedBox()
                  : VerticalDottedLine(
                      color: AppColors.skyBase,
                      dashHeight: 5.h,
                      dashSpace: 2.h,
                      strokeWidth: 1.w,
                    ),
            ),
            Center(
              child: SvgPicture.asset(
                imagePath,
                height: 130.h,
                width: 150.w,
                semanticsLabel: 'Illustration for step $stepNumber',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
