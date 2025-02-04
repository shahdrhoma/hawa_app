import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawaa_app/core/utils/app_router.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/driver_or_customer_view_body.dart';

import '../../../../core/utils/custom_button.dart';
import '../../../../shared/models/body_model.dart';

class CustomerLoginOrSignupView extends StatelessWidget {
  const CustomerLoginOrSignupView({super.key});

  @override
  Widget build(BuildContext context) {
    BodyModel bodyModel = BodyModel(
  photo: 'assets/images/Car-2--Streamline-Brooklyn.png.png', 
  largeText: '!مرحبا',
  smallText: 'سجل دخولك اذا لديك حساب موجودأو أنشئ\nحسابك اذا كنت تستخدم التطبيق لاول مرة ',
);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DriverOrCustomerViewBody(bodyModel: bodyModel), 
          const SizedBox(height: 78),  
          CustomButton( 
            text: 'إنشاء حساب',
            isActive: true,
            onPressed: () {
              context.go(AppRouter.kSignUpView);
            },
          ),
          const SizedBox(height: 20),  
          CustomButton(
            text: 'تسجيل الدخول',
            isActive: false,
            onPressed: () {
            },
          ),
          const Spacer(), 
        ],
      ),
    );
  }
}