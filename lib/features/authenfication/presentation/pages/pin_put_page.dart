// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';

import 'package:singelton_dars/assets/colors/color.dart';
import 'package:singelton_dars/assets/widgets/icons.dart';

class PinPutPage extends StatefulWidget {
  final BuildContext context;
  const PinPutPage({
    Key? key,
    required this.context,
  }) : super(key: key);

  @override
  State<PinPutPage> createState() => _PinPutPageState();
}

class _PinPutPageState extends State<PinPutPage> {
  late final PinTheme defaultPinTheme;
  late bool pinpitValid;
  late bool isError;
  late final TextEditingController pinputController;
  @override
  void initState() {
    pinputController = TextEditingController();
    isError = false;
    pinpitValid = false;
    defaultPinTheme = PinTheme(
      height: (MediaQuery.of(widget.context).size.height / 100) * 5.3,
      width: (MediaQuery.of(widget.context).size.width / 100) * 11.47,
      textStyle: Theme.of(widget.context).textTheme.bodyMedium!.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
      // textStyle: TextStyle(
      //   fontSize: 20,
      //   fontWeight: FontWeight.w500,
      //   color: textBlack,
      // ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: greyishText,
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: scaffoldBackgroundColor,
          automaticallyImplyLeading: false,
          leading: SizedBox(
            height: (MediaQuery.of(context).size.height/100)*3.46,
            width: (MediaQuery.of(context).size.width/100)*7.48,
            child: SvgPicture.asset(AppIcons.arrowLeft),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.height / 100) * 6.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcons.logo),
                  ],
                ),
              ),
              Gap((MediaQuery.of(context).size.height / 100) * 5.8),
              Text(
                "Ro‘yxatdan o‘tish",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Gap(4),
              Text(
                "Tasdiqlash kodini kiriting",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Gap((MediaQuery.of(context).size.height / 100) * 2.7),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Ro‘yxatdan o‘tish uchun kod telefon",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        "raqamingizga yuborildi",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ],
              ),
              Gap((MediaQuery.of(context).size.height / 100) * 1.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "+998 99 144 34 29",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: textBlack),
                  ),
                  const Gap(8),
                  SvgPicture.asset(AppIcons.changeNumber),
                ],
              ),
              Gap((MediaQuery.of(context).size.height / 100) * 2.96),
              Center(
                child: Pinput(
                  length: 6,
                  controller: pinputController,
                  forceErrorState: isError,
                  enableSuggestions: pinpitValid,
                  defaultPinTheme: pinpitValid
                      ? defaultPinTheme.copyBorderWith(
                          border: Border.all(color: Colors.green),
                        )
                      : defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyBorderWith(
                    border: Border.all(
                      width: 2,
                      color: pinputFocusBorder,
                    ),
                  ),
                  errorPinTheme: defaultPinTheme.copyBorderWith(
                    border: Border.all(
                      color: pinputErrorBorder,
                      width: 2,
                    ),
                  ),
                  onChanged: (value) {
                    if (value == "123456") {
                      setState(() {
                        pinpitValid = true;
                      });
                    } else {
                      setState(() {
                        isError = false;
                      });
                    }
                  },
                  onCompleted: (value) {
                    if (pinpitValid) {
                    } else {
                      setState(() {
                        isError = true;
                      });
                    }
                  },
                ),
              ),
              Gap((MediaQuery.of(context).size.height / 100) * 2.95),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Kod kelmadimi?",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(
                      "Qaytadan yuborish",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(color: textBlack),
                    ),
                  ),
                ],
              ),
              Gap((MediaQuery.of(context).size.height / 100) * 2.47),
              Container(
                height: (MediaQuery.of(context).size.height / 100) * 5.92,
                width: double.maxFinite,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: bottonColorYellow,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Ro‘yxatdan o‘tish",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: textBlack),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




