import 'package:byco_task/presentation/refer_a_friend/widget/step_widget.dart';
import 'package:byco_task/presentation/resources/appbar/appbar_widget.dart';
import 'package:byco_task/presentation/resources/colors/colors.dart';
import 'package:byco_task/presentation/resources/routes/routes.dart';
import 'package:byco_task/presentation/resources/textsyle/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReferAFriendView extends StatelessWidget {
  const ReferAFriendView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(375, 1089),
    );
    return Scaffold(
      backgroundColor: AppColors.skyWhite,
      appBar: AppBarWidget(text: 'Refer a friend'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: SizedBox(
                width: 323.w,
                height: 146.h,
                child: Column(
                  children: [
                    SizedBox(
                      width: 323.w,
                      height: 92.h,
                      child: RichText(
                        text: TextSpan(
                          text: "30% off for you. 30% off for your friends!\n",
                          style: AppTextStyle.regularSemiBold
                              .copyWith(color: AppColors.inkDarkest),
                          children: [
                            TextSpan(
                              text:
                                  "Invite friends and get 30% off your next ride up to 20EGP. They’ll also enjoy 30% off their first ride as well!\n",
                              style: AppTextStyle.smallMedium
                                  .copyWith(color: AppColors.inkLight),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: 323.w,
                      height: 36.h,
                      child: RichText(
                        text: TextSpan(
                          text: "*Offer valid only for new users\n",
                          style: AppTextStyle.tinyMedium
                              .copyWith(color: AppColors.inkLight),
                          children: [
                            TextSpan(
                              text: "Terms and Conditions",
                              style: AppTextStyle.tinyMedium.copyWith(
                                  color: AppColors.greenBase,
                                  decoration: TextDecoration.underline),
                            ),
                            TextSpan(
                              text: " apply",
                              style: AppTextStyle.tinyMedium
                                  .copyWith(color: AppColors.inkDarkest),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.h),

            // Steps Section
            Semantics(
              label: 'Step 1: Invite your friends',
              child: StepWidget(
                stepNumber: "1",
                title: "Invite your friends",
                imagePath: 'assets/images/undraw_add_friends_re_3xte1.svg',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.w),
              child: Semantics(
                label: 'Step 2: Friends enter your referral code',
                child: StepWidget(
                  stepNumber: "2",
                  title: "Friends enter your referral code",
                  imagePath: 'assets/images/undraw_referral_re_0aji_1.svg',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.w),
              child: Semantics(
                label: 'Step 3: Get your rewards right away',
                child: StepWidget(
                  stepNumber: "3",
                  title: "Get your rewards right away!",
                  imagePath: 'assets/images/Group_250.svg',
                ),
              ),
            ),
            SizedBox(height: 32.h),
            // Buttons
            Padding(
              padding: EdgeInsets.only(left: 22.0.w, right: 26.w),
              child: SizedBox(
                width: 327.w, // width
                height: 108.h, // height
                child: Column(
                  children: [
                    Expanded(
                      child: Semantics(
                        label: 'Invite Friends button',
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.greenDarkest,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(48.r),
                            ),
                            minimumSize: Size(double.infinity.w, 48.h),
                          ),
                          child: Center(
                            child: Text(
                              "Invite Friends",
                              style: AppTextStyle.regularSemiBold.copyWith(
                                color: AppColors.skyWhite,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Expanded(
                      child: Semantics(
                        label: 'Track your referrals button',
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.healthRoute);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.greenLightest,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(48.r),
                            ),
                            minimumSize: Size(double.infinity.w, 48.h),
                          ),
                          child: Center(
                            child: Text(
                              "Track your referrals",
                              style: AppTextStyle.regularSemiBold.copyWith(
                                color: AppColors.greenDarkest,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 72.h),
          ],
        ),
      ),
    );
  }
}
