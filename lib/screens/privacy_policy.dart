import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:flutter/material.dart';

import '../widgets/header.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  TextStyle headline = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
  TextStyle bulletStyle = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black);
  TextStyle heading = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1,vertical: 50),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.myHexColor.withOpacity(0.1),
                      blurRadius: 10.0,
                      spreadRadius: 1,
                      offset: const Offset(2.0, 2.0),
                    ),
                  ]),

              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discount&Codes privacy  policy\n',
                    style: headline,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      "At Discount&Codes, we value your privacy and are committed to protecting your personal information. This Privacy Policy explains how we collect, use, and disclose your personal data when you visit our affiliate marketing website.\n"),
                  Text(
                    '1. Information We Collect:\n',
                    style: headline,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '1.1. ',
                        style: heading,
                      ),
                      const Flexible(
                          child: Text(
                              'Personal Information: When you visit our website, we may collect personal information such as your name, email address, and contact details when you voluntarily provide them to us.\n'))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '1.2. ',
                        style: heading,
                      ),
                      const Flexible(
                          child: Text(
                              'Automatically Collected Information: We may also collect certain information automatically when you visit our website, including your IP address, browser type, referring website, and pages you visit on our site. This information is collected through the use of cookies and similar tracking technologies.\n\n'))
                    ],
                  ),
                  Text(
                    '2. Use of Information:\n',
                    style: headline,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '2.1. ',
                        style: heading,
                      ),
                      const Flexible(
                          child: Text(
                              'Personal Information: We may use the personal information you provide to us for the following purposes:.\n'))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                          child: Text(
                              '2.1.1. To provide you with information about our services, products, and promotio.\n')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                          child: Text(
                              '2.1.2. To process and fulfill your requests for products or services..\n')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                          child: Text(
                              '2.1.3. To improve our website and tailor the content and user experience.\n')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '2.2 ',
                        style: heading,
                      ),
                      const Flexible(
                          child: Text(
                              'Automatically Collected Information: We may use the automatically collected information for various purposes, including:\n'))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                          child: Text(
                              '2.2.1. To gather demographic information about our user base.\n')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                          child: Text(
                              "2.2.2. To analyze trends, administer the site, and track users' movements on our website.\n")),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                          child: Text(
                              '2.2.3. To personalize and improve the user experience on our website.\n')),
                    ],
                  ),
                  Text(
                    '3. Sharing of Information:\n',
                    style: headline,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '3.1. ',
                        style: heading,
                      ),
                      const Flexible(
                          child: Text(
                              'Affiliates and Service Providers: We may share your personal information with trusted third-party affiliates and service providers who assist us in operating our website, conducting our business, or providing services to you. These third parties are required to protect your information and use it only for the purposes we specify.\n'))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '3.2. ',
                        style: heading,
                      ),
                      const Flexible(
                          child: Text(
                              'Legal Compliance: We may disclose your personal information if required to do so by law or if we believe that such disclosure is necessary to comply with legal obligations, protect our rights, or investigate fraudulent or illegal activities.\n\n'))
                    ],
                  ),
                  Text(
                    '4 Cookies and Tracking Technologies:\n',
                    style: headline,
                  ),
                  const Text(
                      "We may use cookies and similar tracking technologies to collect information about your browsing activities on our website. These technologies help us analyze trends, administer the site, and provide a more personalized experience. You can control the use of cookies through your browser settings.\n"),
                  Text(
                    '5. Security:\n',
                    style: headline,
                  ),
                  const Text(
                      'We take reasonable measures to protect your personal information from unauthorized access, disclosure, alteration, or destruction. However, please be aware that no method of transmission over the internet or electronic storage is completely secure, and we cannot guarantee absolute security.\n'),
                  Text(
                    '6. Links to Third-Party Websites:\n',
                    style: headline,
                  ),
                  const Text(
                      'Our website may contain links to third-party websites. Please note that we are not responsible for the privacy practices or content of these third-party sites. We encourage you to read the privacy policies of those websites when you visit them.\n'),
                  Text(
                    "7. Children's Privacy:\n",
                    style: headline,
                  ),
                  const Text(
                      'Our website is not intended for children under the age of 13. We do not knowingly collect personal information from children. If you believe that we may have collected information from a child, please contact us, and we will take appropriate measures to remove the information.\n'),
                  Text(
                    "8. Changes to this Privacy Policy:\n",
                    style: headline,
                  ),
                  const Text(
                      "We may update this Privacy Policy from time to time. Any changes will be posted on this page, and the revised policy will be effective immediately upon posting. We encourage you to review this Privacy Policy periodically.\n"),
                  Text(
                    "9. Contact Us:\n",
                    style: headline,
                  ),
                  const Text(
                      'If you have any questions or concerns about this Privacy Policy or our privacy practices, please contact us at usama0naseer@gmail.com By using our website, you consent to the collection, use, and disclosure of your information as described in this Privacy Policy.')
                ],
              ),
            ),
            const AppFooter()
          ],
        ),
      ),
    );
  }
}
