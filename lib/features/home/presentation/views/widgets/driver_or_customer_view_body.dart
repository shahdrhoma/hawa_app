import 'package:flutter/material.dart';
import 'package:hawaa_app/core/utils/styles.dart';
import '../../../../../shared/models/body_model.dart';

class DriverOrCustomerViewBody extends StatelessWidget {
  const DriverOrCustomerViewBody({super.key, required this.bodyModel});
  final BodyModel bodyModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Padding(
            padding: const EdgeInsets.only(top: 135),
            child: Text(
              bodyModel.largeText,
              style: Styles.textStyle24.copyWith(
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            bodyModel.smallText,
            style: Styles.textStyle14,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 58),
          Image.asset(
            bodyModel.photo,
            height: 276,
            width: 357,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
