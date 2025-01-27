import 'package:byco_task/presentation/health/widget/cards_widget.dart';
import 'package:byco_task/presentation/health/widget/goal_form.dart';
import 'package:byco_task/presentation/health/widget/header_widget.dart';
import 'package:byco_task/presentation/resources/appbar/appbar_widget.dart';
import 'package:byco_task/presentation/resources/colors/colors.dart';
import 'package:byco_task/presentation/resources/textsyle/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HealthView extends StatelessWidget {
  const HealthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyWhite,
      appBar: AppBarWidget(
        text: 'Health',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 326.5.w,
              height: 32.0.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeaderBulider(text: 'Switch Program', width: 115.w),
                  HeaderBulider(text: 'Today', width: 79.w, icon: Icons.tune),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            SizedBox(
              width: 375.w,
              height: 179.h,
              child: Column(
                children: [
                  SizedBox(
                    width: 130.w,
                    height: 158.h,
                    child: Column(
                      children: [
                        Container(
                          width: 130.w,
                          height: 130.h,
                          decoration: BoxDecoration(
                            color: AppColors.greenLightest,
                            shape: BoxShape.circle,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.local_fire_department,
                                size: 52.sp,
                                color: AppColors.greenDarkest,
                              ),
                              SizedBox(height: 8.h),
                              Text("13500",
                                  style: AppTextStyle.regularBold.copyWith(
                                    color: AppColors.greenDarkest,
                                  ) // Green color
                                  ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Calories",
                              style: AppTextStyle.largeBold.copyWith(
                                color: AppColors.inkLight,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.info_outline,
                              size: 16.sp,
                              color: AppColors.inkLight,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.5.w),
              child: SizedBox(
                width: 328.w,
                height: 112.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Cards(
                        value: '60',
                        lable: 'Km',
                        icon: SvgPicture.asset(
                          'assets/images/Distance.svg',
                          width: 36.w,
                          height: 37.h,
                        )),
                    Cards(
                      value: '10',
                      lable: 'Hr',
                      icon: Icon(
                        Icons.watch_later_outlined,
                        size: 36.sp,
                        color: AppColors.greenDarkest,
                      ),
                    ),
                    Cards(
                      value: '20',
                      lable: 'Km/h',
                      icon: Icon(
                        Icons.speed,
                        size: 36.sp,
                        color: AppColors.greenDarkest,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              width: 375.w,
              height: 5.h,
              color: AppColors.inkLighter,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 24.0.h),
              child: SizedBox(
                width: 327.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 24.h,
                      width: 327.w,
                      child: Center(
                        child: Text(
                          'Create a New goal',
                          style: AppTextStyle.regularBold
                              .copyWith(color: AppColors.inkDarkest),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    SizedBox(
                      width: 327.w,
                      height: 224.h,
                      child: GoalForm(),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
