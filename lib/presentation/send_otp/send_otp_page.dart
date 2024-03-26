import 'package:flutter/material.dart';
import 'package:foodapp/core/colors.dart';
import 'package:foodapp/core/constants.dart';
import 'package:foodapp/presentation/all_purpose_widgets/Large_text.dart';
import 'package:foodapp/presentation/location/location.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class SendOtpPage extends StatelessWidget {
  const SendOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0), child: AppBar()),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight,
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: LargeText(text: 'Enter the OTP sent to 903XXXXXXX'),
            ),
            kHeight20,
            OTPTextField(
              length: 6,
              width: MediaQuery.of(context).size.width * 8,
              fieldWidth: 50,
              style: const TextStyle(fontSize: 17, color: kBlack),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              otpFieldStyle: OtpFieldStyle(
                  backgroundColor: kWhite,
                  borderColor: kWhite,
                  enabledBorderColor: kWhite,
                  focusBorderColor: kWhite),
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            kHeight20,
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
                        builder: (ctx) => const LocationPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(color: kGrey, fontSize: 16),
                  ),
                ),
              ),
            ),
            kHeight20,
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text("Didn't receive it ? Retry in 00:21",
                  style: TextStyle(color: kGrey, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
