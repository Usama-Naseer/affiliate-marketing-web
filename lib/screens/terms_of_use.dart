import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:discountandcodes/widgets/header.dart';
import 'package:discountandcodes/widgets/terms_conditions.dart';
import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  TextStyle headline  = const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black);
  TextStyle bulletStyle  = const TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.black);
  TextStyle heading  = const TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const SizedBox(
              height: 10,
            ),
            // Container(
            //   color: Colors.white,
            //     margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
            //     child: const Header()),
            const SizedBox(height: 20,),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 50),
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text('Terms of Use for Discount&Codes\n',style: headline,),
                  const SizedBox(height: 20,),
                  const Text('These Terms of Use ("Terms") govern your use of the Discount&Codes website ("Website"). By accessing or using the Website, you agree to be bound by these Terms. If you do not agree with these Terms, please refrain from using the Website.\n'),

                  Text('1. Use of the Website:\n',style: headline,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Text('1.1. ',style: heading,),
                      const Flexible(child: Text("Eligibility: You must be at least 18 years old or the legal age of majority in your jurisdiction to use the Website. By accessing and using the Website, you represent and warrant that you meet these eligibility requirements.\n"))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Text('1.2. ',style: heading,),
                      const Flexible(child: Text("License: Discount&Codes grants you a limited, non-exclusive, non-transferable, and revocable license to access and use the Website for personal, non-commercial purposes. You agree not to reproduce, modify, distribute, display, or exploit any content on the Website without prior written permission from Discount&Codes.\n"))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Text('1.3. ',style: heading,),
                      const Flexible(child: Text("Prohibited Activities: You agree not to engage in any of the following activities while using the Website:\n"))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  const [
                      SizedBox(width: 20,),
                      Flexible(child: Text('1.3.1. Violating any applicable laws, regulations, or third-party rights.\n')),

                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  const [
                      SizedBox(width: 20,),
                      Flexible(child: Text('1.3.2.  Uploading, transmitting, or distributing any malicious code, viruses, or harmful content.\n')),

                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  const [
                      SizedBox(width: 20,),
                      Flexible(child: Text('1.3.3. Interfering with the operation or security of the Website.\n')),

                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  const [
                      SizedBox(width: 20,),
                      Flexible(child: Text('1.3.4. Impersonating any person or entity or misrepresenting your affiliation with Discount&Codes.\n')),

                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  const [
                      SizedBox(width: 20,),
                      Flexible(child: Text('1.3.5. Collecting or harvesting any personally identifiable information from other users without their consent.\n')),

                    ],
                  ),

                  Text('2. Content:\n',style: headline,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Text('2.1. ',style: heading,),
                      const Flexible(child: Text("User-Generated Content: The Website may allow users to submit content, such as reviews, comments, or other materials. By submitting content, you grant Discount&Codes a non-exclusive, worldwide, royalty-free, perpetual, irrevocable, and sublicensable right to use, reproduce, modify, adapt, publish, translate, distribute, display, and perform such content in connection with the operation of the Website.\n"))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Text('2.2. ',style: heading,),
                      const Flexible(child: Text("Intellectual Property: Discount&Codes retains all intellectual property rights in the Website, including but not limited to trademarks, logos, and copyrighted materials. You agree not to use, modify, or reproduce any intellectual property of Discount&Codes without prior written permission.\n"))
                    ],
                  ),
                  Text('3. Links to Third-Party Websites:\n',style: headline,),
                  const Text("The Website may contain links to third-party websites or resources. Discount&Codes is not responsible for the availability, content, or accuracy of these third-party sites. The inclusion of any link does not imply endorsement or affiliation with the linked site. You access these third-party sites at your own risk.\n"),

                  Text('4. Disclaimer of Warranties:\n',style: headline,),
                  const Text('THE WEBSITE IS PROVIDED ON AN "AS IS" AND "AS AVAILABLE" BASIS, WITHOUT ANY WARRANTIES OF ANY KIND, WHETHER EXPRESS OR IMPLIED. DISCOUNT&CODES DISCLAIMS ALL WARRANTIES, INCLUDING BUT NOT LIMITED TO MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT. YOUR USE OF THE WEBSITE IS AT YOUR SOLE RISK.\n'),

                  Text('5. Limitation of Liability:\n',style: headline,),
                  const Text('TO THE FULLEST EXTENT PERMITTED BY APPLICABLE LAW, DISCOUNT&CODES SHALL NOT BE LIABLE FOR ANY INDIRECT, INCIDENTAL, SPECIAL, CONSEQUENTIAL, OR EXEMPLARY DAMAGES ARISING OUT OF OR IN CONNECTION WITH YOUR USE OF THE WEBSITE, WHETHER BASED ON CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY, OR OTHERWISE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.\n'),

                  Text('6. Indemnification:\n',style: headline,),
                  const Text("You agree to indemnify, defend, and hold Discount&Codes and its affiliates, officers, directors, employees, and agents harmless from any claims, losses, liabilities, damages, costs, or expenses arising out of or in connection with your use of the Website or your violation of these Terms.\n"),

                  Text('7. Modification and Termination:\n',style: headline,),
                  const Text("Discount&Codes reserves the right to modify, suspend, or terminate the Website or these Terms at any time, for any reason, without prior notice. We may also impose limits on certain\n"),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
