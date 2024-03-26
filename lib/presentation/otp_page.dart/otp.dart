import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp/core/colors.dart';
import 'package:foodapp/core/constants.dart';
import 'package:foodapp/presentation/all_purpose_widgets/Large_text.dart';
import 'package:foodapp/presentation/otp_page.dart/widgets/policy_and_privacy.dart';
import 'package:foodapp/presentation/send_otp/send_otp_page.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class EnterOtp extends StatelessWidget {
  const EnterOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 10),
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Skip',
                  style: TextStyle(
                      color: kBlack, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          kHeight,
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: LargeText(
              text: "Enter your mobile number to get OTP",
            ),
          ),
          kHeight,
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IntlPhoneField(
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(
                  borderRadius: KRadius20,
                  borderSide: const BorderSide(color: kWhite),
                ),
              ),
              inputFormatters: [LengthLimitingTextInputFormatter(10)],
              initialCountryCode: 'IN',
              // onChanged: (phone) {
              //   print(phone.completeNumber);
              // },
            ),
          ),
          kHeight,
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: kBlack,
                  backgroundColor: kWhite,
                  // foreground
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const SendOtpPage(),
                    ),
                  );
                },
                child: const Text(
                  "Get OTP",
                  style: TextStyle(
                      color: kBlack, fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
            ),
          ),
          kHeight,
          const PolicyAndPrivacy(),
        ],
      ),
    );
  }
}
