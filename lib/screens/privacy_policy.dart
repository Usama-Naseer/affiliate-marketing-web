import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:discountandcodes/widgets/header.dart';
import 'package:discountandcodes/widgets/terms_conditions.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1),
          child: Column(
            children:  const [
              SizedBox(
                height: 10,
              ),
              Header(),
              Divider(height: 0.4,
                thickness: 0.4,),
                Text("At Discount&Codes, we value your privacy and are committed to protecting your personal information. This Privacy Policy explains how we collect, use, and disclose your personal data when you visit our affiliate marketing website."),
              AppFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
