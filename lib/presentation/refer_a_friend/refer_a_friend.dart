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
    return Scaffold(
      backgroundColor: AppColors.skyWhite,
      appBar: AppBarWidget(text: 'Refer a friend'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(24.w, 19.h, 0.w, 16.h),
              width: 323.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "30% off for you. 30% off for your friends!\n",
                          style: AppTextStyle.regularSemiBold
                              .copyWith(color: AppColors.inkDarkest),
                        ),
                        TextSpan(
                          text:
                              "Invite friends and get 30% off your next ride up to 20EGP. They’ll also enjoy 30% off their first ride as well!",
                          style: AppTextStyle.smallMedium
                              .copyWith(color: AppColors.inkLight),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  RichText(
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
                ],
              ),
            ),

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
              child: Column(
                children: [
                  Semantics(
                    label: 'Invite Friends button',
                    child: ElevatedButton(
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
                  SizedBox(
                    height: 12.h,
                  ),
                  Semantics(
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
                ],
              ),
            ),
            SizedBox(height: 72.h),
          ],
        ),
      ),
    );
  }
}
