import 'package:byco_task/presentation/resources/colors/colors.dart';
import 'package:byco_task/presentation/resources/textsyle/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cards extends StatelessWidget {
  final String value;
  final String lable;
  final Widget icon;
  const Cards({
    super.key,
    required this.value,
    required this.lable,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 88.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 88.w,
                height: 88.h,
                decoration: BoxDecoration(
                  color: AppColors.greenLightest,
                  shape: BoxShape.circle,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon,
                    Text(
                      value,
                      style: AppTextStyle.smallBold
                          .copyWith(color: AppColors.greenDarkest),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                lable,
                style: AppTextStyle.smallBold.copyWith(
                  color: AppColors.inkLight,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
