import 'package:byco_task/presentation/health/widget/cards_widget.dart';
import 'package:byco_task/presentation/health/widget/goal_form.dart';
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
      appBar: AppBar(
        backgroundColor: AppColors.skyWhite,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: SizedBox(
          height: 12.h,
          width: 6.w,
          child: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left_rounded,
              color: AppColors.inkDarkest,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        centerTitle: true,
        title: Text(
          "Health",
          style: AppTextStyle.largeBold,
        ),
      ),
      body: SizedBox(
        width: 375.w,
        child: Column(
          children: [
            SizedBox(
              width: 326.5.w,
              height: 32.0.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 115.0.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.r),
                      ),
                      border: Border.fromBorderSide(
                        BorderSide(color: AppColors.skyLight, width: 1.w),
                      ),
                    ),
                    child: Text(
                      "Switch Program",
                      style: AppTextStyle.tinyMedium
                          .copyWith(color: AppColors.inkDarkest),
                    ),
                  ),
                  Container(
                    width: 79.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.r),
                      ),
                      border: Border.fromBorderSide(
                        BorderSide(color: AppColors.skyLight, width: 1.w),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.tune, color: AppColors.inkBase, size: 16.sp),
                        Text(
                          "Today",
                          style: AppTextStyle.tinyMedium
                              .copyWith(color: AppColors.inkDarkest),
                        )
                      ],
                    ),
                  ),
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
                    // height: 158.h,
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
