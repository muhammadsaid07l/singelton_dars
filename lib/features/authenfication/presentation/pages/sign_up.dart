import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:singelton_dars/assets/colors/color.dart';
import 'package:singelton_dars/assets/widgets/icons.dart';
import 'package:singelton_dars/features/authenfication/login_screen.dart';
import 'package:singelton_dars/features/authenfication/presentation/pages/pin_put_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final TextEditingController namecontroller;
  late final TextEditingController numberController;
  @override
  void initState() {
    namecontroller = TextEditingController();
    numberController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                "Ma’lumotlarni kiriting",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Gap((MediaQuery.of(context).size.height / 100) * 2.7),
              Text(
                "F.I.SH",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const Gap(8),
              Container(
                decoration: BoxDecoration(
                  color: textFieldNoFocusBackgound,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: textBlack),
                  controller: namecontroller,
                  decoration: InputDecoration(
                    hintText: "To‘liq ismingizni kiriting",
                    hintStyle: Theme.of(context).textTheme.displaySmall,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Gap((MediaQuery.of(context).size.height / 100) * 1.97),
              Text(
                "Telefon raqam",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Gap((MediaQuery.of(context).size.height / 100)),
              Container(
                height: (MediaQuery.of(context).size.height/100)*5.92,

                decoration: BoxDecoration(
                  color: textFieldNoFocusBackgound,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: textBlack),
                  controller: numberController,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                        left: (MediaQuery.of(context).size.width / 100) * 3.2,
                        right: (MediaQuery.of(context).size.width / 100) * 1.4,
                        top: (MediaQuery.of(context).size.height / 100) * 1.84,
                        bottom:
                            (MediaQuery.of(context).size.height / 100) * 1.73,
                      ),
                      child: Text(
                        "+998",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    hintText: "99 123 45 67",
                    hintStyle: Theme.of(context).textTheme.displaySmall,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Gap(
                (MediaQuery.of(context).size.height / 100) * 2.5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) =>  PinPutPage(context: context),
                      ),
                      (route) => false);
                },
                child: Container(
                  height: (MediaQuery.of(context).size.height / 100) * 5.92,
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: bottonColorYellow,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "Davom etish",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: textBlack),
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ro‘yxatdan o‘tganmisiz?",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: bodySmallText,
                        ),
                  ),
                ],
              ),
              Gap((MediaQuery.of(context).size.height / 100) * 1.74)
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 101, // (MediaQuery.of(context).size.height/100)*10,
          color: scaffoldBackgroundColor,
          elevation: 0,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    bottom: (MediaQuery.of(context).size.height / 100) * 3),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                        (route) => false);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: (MediaQuery.of(context).size.height / 100) * 5.92,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: pinkish,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "Kirish",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: textBlack),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
