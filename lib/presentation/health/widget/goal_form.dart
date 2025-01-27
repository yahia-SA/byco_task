import 'package:byco_task/presentation/resources/colors/colors.dart';
import 'package:byco_task/presentation/resources/textsyle/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoalForm extends StatelessWidget {
  const GoalForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 48.h,
          child: DropdownButtonFormField(
            items: ['Run', 'Walk', 'Bike'].map((goal) {
              return DropdownMenuItem(
                value: goal,
                child: Text(goal, style: TextStyle(fontSize: 14.sp)),
              );
            }).toList(),
            onChanged: (value) {},
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8.r)),
              hintText: 'Choose Your Goal',
            ),
          ),
        ),
        SizedBox(
          height: 14.h,
        ),
        SizedBox(
          height: 40.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Start Date',
                style: AppTextStyle.smallMedium
                    .copyWith(color: AppColors.inkDarkest),
              ),
              SizedBox(
                width: 137.w,
                height: 40.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_today_outlined,
                        color: AppColors.inkLight),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r)),
                    hintText: '18/08/2024',
                    hintStyle: AppTextStyle.smallMedium
                        .copyWith(color: AppColors.inkLight),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 14.h,
        ),
        SizedBox(
          height: 40.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'End Date',
                style: AppTextStyle.smallMedium
                    .copyWith(color: AppColors.inkDarkest),
              ),
              SizedBox(
                width: 137.w,
                height: 40.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.calendar_today_outlined,
                      color: AppColors.inkLight,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r)),
                    hintText: '20/09/2024',
                    hintStyle: AppTextStyle.smallMedium
                        .copyWith(color: AppColors.inkLight),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 22.h,
        ),
        ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Alert Dialog"),
                    content: Text("This is a simple alert dialog."),
                    actions: [
                      TextButton(
                        onPressed: () {
                          // Close the dialog
                          Navigator.of(context).pop();
                        },
                        child: Text("OK"),
                      ),
                    ],
                  );
                });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.greenDarkest,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48.r),
            ),
            minimumSize: Size(double.infinity.w, 48.h),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/Icon.svg",
                width: 24.w,
                height: 24.h,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                "Set Goal",
                style: AppTextStyle.regularSemiBold
                    .copyWith(color: AppColors.skyWhite),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
