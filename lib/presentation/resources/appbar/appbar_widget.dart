import 'package:byco_task/presentation/resources/colors/colors.dart';
import 'package:byco_task/presentation/resources/textsyle/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const AppBarWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.skyWhite,
      elevation: 0,
      scrolledUnderElevation: 0,
      leading: Semantics(
        label: 'Back button',
        child: SizedBox(
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
            tooltip: 'Go back',
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        text,
        style: AppTextStyle.largeBold,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
