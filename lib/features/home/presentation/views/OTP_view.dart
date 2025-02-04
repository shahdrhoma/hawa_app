import 'package:flutter/material.dart';
import 'package:hawaa_app/core/utils/custom_button.dart';
import 'package:hawaa_app/core/utils/otp_text_field.dart';
import 'package:hawaa_app/core/utils/styles.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/headline.dart';
import 'package:hawaa_app/shared/models/headline_model.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
      largeText: ' تأكيد رقم الهاتف',
      smallText: 'أدخل رمز التحقق (OTP).',
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 66,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                    color: Color(0xffA6A6A6),
                  ),
                ),
                Text(
                  'رجوع',
                  style: Styles.textStyle16
                      .copyWith(color: const Color(0xffA6A6A6)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 52),
              child: Headline(headlineModel: headlineModel),
            ),
            const SizedBox(
              height: 42,
            ),
            const OTPTextField(),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'أعد الإرسال مرة أخرى',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff49AAEF),
                        fontFamily: 'Cairo'),
                  ),
                ),
                const Text(
                  'لم تستلم الرمز؟',
                  style: TextStyle(
                      color: Color(0xff56595B),
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Cairo'),
                ),
              ],
            ),
            const SizedBox(
              height: 170,
            ),
            CustomButton(text: 'تحقق', isActive: true, onPressed: () {})
          ],
        ),
      ),
    );
  }
}
