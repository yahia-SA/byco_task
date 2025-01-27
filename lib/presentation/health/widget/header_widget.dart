import 'package:byco_task/presentation/resources/colors/colors.dart';
import 'package:byco_task/presentation/resources/textsyle/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderBulider extends StatelessWidget {
  final String text;
  final double width;
  final IconData? icon;
  const HeaderBulider({
    super.key,
    required this.text,
    required this.width,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: 35.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(40.r),
        ),
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.skyLight, width: 1.w),
        ),
      ),
      child: icon == null
          ? Center(
              child: Text(
                text,
                style: AppTextStyle.tinyMedium
                    .copyWith(color: AppColors.inkDarkest),
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: AppColors.inkBase, size: 16.sp),
                Text(
                  text,
                  style: AppTextStyle.tinyMedium
                      .copyWith(color: AppColors.inkDarkest),
                )
              ],
            ),
    );
  }
}
