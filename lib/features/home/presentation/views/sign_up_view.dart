import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:hawaa_app/core/utils/app_router.dart';
import 'package:hawaa_app/core/utils/custom_button.dart';
import 'package:hawaa_app/core/utils/custom_text_field.dart';
import 'package:hawaa_app/core/utils/custom_text_field_with_divider.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/check.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/headline.dart';
import 'package:hawaa_app/shared/models/headline_model.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
      largeText: ' انشئ حسابك الان',
      smallText: 'ادخل اسمك ورقم تليفونك للبدء',
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 135),
              child: Headline(headlineModel: headlineModel),
            ),
            const SizedBox(
              height: 68,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(
                hintText: 'ادخل اسمك',
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextFieldWithDivider(
                hintText: 'ادخل رقم هاتفك',
                suffixIcon: Icon(FontAwesomeIcons.angleDown),
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            const Check(),
            const SizedBox(
              height: 172,
            ),
            CustomButton(
              text: 'انشاء حساب', 
              isActive: true, 
              onPressed: () {
                context.go(AppRouter.kOtpView);
            },
            ),
          ],
        ),
      ),
    );
  }
}
