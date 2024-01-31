import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:singelton_dars/assets/widgets/icons.dart';
import 'package:singelton_dars/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:singelton_dars/features/profile/presentation/pages/profile_edit.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    context.read<ProfileB>().add(boshBloc());

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
          "Profil ma’lumotlari",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            BlocBuilder<ProfileB, ProfState>(
              builder: (context, state) {
                return Container(
                  margin: EdgeInsets.only(
                      top: (MediaQuery.of(context).size.height / 100) * 2.96),
                  height: (MediaQuery.of(context).size.height / 100) * 30.05,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 50,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
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
                                  child: state.avatar == null? const Icon(Icons.person): Image.file(state.avatar!),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                  ),
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ProfileChange(),
                                          ),
                                        );
                                      },
                                      child: SvgPicture.asset(
                                          AppIcons.changeProfile)),
                                ),
                                SizedBox(
                                    height:
                                        (MediaQuery.of(context).size.height /
                                                100) *
                                            5.4),
                              ],
                            ),
                          ],
                        ),
                        Gap((MediaQuery.of(context).size.height / 100) * 2.5),
                        Text(
                          "F.I.SH",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        const Gap(4),
                        Text(
                          '${state.name?.name}',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Gap((MediaQuery.of(context).size.height / 100) * 2),
                        Text(
                          "Manzilingiz",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Text(
                          state.name?.adress ?? "a",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Gap((MediaQuery.of(context).size.height / 100) * 2),
            Container(
              padding: const EdgeInsets.all(16),
              height: (MediaQuery.of(context).size.height / 100) * 9.4,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFFFFFFFF),
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFFEEFFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcons.chiqish),
                    const Gap(8),
                    Text(
                      "Chiqish",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: const Color(0xFFF9524E),
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
