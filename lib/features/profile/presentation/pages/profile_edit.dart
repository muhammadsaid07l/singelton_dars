import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:singelton_dars/assets/colors/color.dart';
import 'package:singelton_dars/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:singelton_dars/features/profile/presentation/profile_main.dart';

class ProfileChange extends StatefulWidget {
  const ProfileChange({super.key});

  @override
  State<ProfileChange> createState() => _ProfileChangeState();
}

class _ProfileChangeState extends State<ProfileChange> {
  late final TextEditingController name;
  late final TextEditingController location;

  @override
  void initState() {
    name = TextEditingController();
    location = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: const Color.fromRGBO(0, 0, 0, 0.04),
        elevation: 1,
        title: Text(
          "Profilni tahrirlash",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: (MediaQuery.of(context).size.height / 100) * 2.96),
              // height: (MediaQuery.of(context).size.height / 100) * 30.05,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFFFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            BlocBuilder<ProfileB, ProfState>(
                              builder: (context, state) {
                                return GestureDetector(
                                  onTap: () {
                                    context.read<ProfileB>().add(ChangeImage());
                                  },
                                  child: Container(
                                    clipBehavior: Clip.hardEdge,
                                    margin: EdgeInsets.only(
                                        top: (MediaQuery.of(context).size.height /
                                                100) *
                                            2),
                                    height: (MediaQuery.of(context).size.height /
                                            100) *
                                        8.87,
                                    width: (MediaQuery.of(context).size.width /
                                            100) *
                                        19.2,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.amber),
                                    child: state.avatar == null? Icon(Icons.person): Image.file(state.avatar!),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap((MediaQuery.of(context).size.height / 100) * 2.5),
                    Text(
                      "F.I.SH",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: textBlack,
                          ),
                    ),
                    const Gap(4),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F3F5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: textBlack,
                                ),
                        controller: name,
                        decoration: InputDecoration(
                            hintText: "Ism kiriting",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                      ),
                    ),
                    Gap((MediaQuery.of(context).size.height / 100) * 2),
                    Text(
                      "Manzilingiz",
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: textBlack,
                          ),
                    ),
                    const Gap(8),
                    Container(
                      height:
                          (MediaQuery.of(context).size.height / 100) * 14.78,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFF2F3F5),
                      ),
                      child: TextField(
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: textBlack,
                                ),
                        controller: location,
                        maxLines: 5,
                        decoration: InputDecoration(
                          //  hintText: "Yashash joyingiz",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: scaffoldBackgroundColor,
        elevation: 0,
        child: GestureDetector(
          onTap: () {
            context.read<ProfileB>().add(
                  SaveButtonPressed(
                    name: name.text,
                    adress: location.text,
                  ),
                );
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const Profile()),
                (route) => false);
            context.read<ProfileB>().add(boshBloc());
          },
          child: Container(
            alignment: Alignment.center,
            width: double.maxFinite,
            height: (MediaQuery.of(context).size.height / 100) * 5.92,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFFF0CB23),
            ),
            child: Text(
              "Saqlash",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: textBlack,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
