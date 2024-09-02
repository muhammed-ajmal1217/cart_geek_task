import 'package:cartgeek/constants/app_colors.dart';
import 'package:cartgeek/controller/home_controller.dart';
import 'package:cartgeek/view/widgets/button_widget.dart';
import 'package:cartgeek/view/widgets/custom_text.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PackageList extends StatelessWidget {
  HomeController provider;

   PackageList({
    super.key,
    required this.provider
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: provider.packageList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final package = provider.packageList[index];
        return Padding(
          padding:
              const EdgeInsets.only(bottom: 20, left: 15, right: 15),
          child: Container(
            decoration: BoxDecoration(
                color: index % 2 == 0
                    ? AppColors.lightPink
                    : AppColors.blueGrey,
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        EneftyIcons.calendar_2_outline,
                        color: index % 2 == 0
                            ? AppColors.mediumPink
                            : AppColors.white,
                        size: 40,
                      ),
                      SizedBox(
                        height: 30,
                        child: ButtonWidget(
                          text: 'Book Now',
                          textColor: AppColors.white,
                          fontSize: 12,
                          backgroundColor: index % 2 == 0
                              ? AppColors.mediumPink
                              : AppColors.mediumBlueGrey,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: package.title,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkBlue,
                      ),
                      CustomText(
                        text: package.price,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkBlue,
                      ),
                    ],
                  ),
                ),
                ListTile(
                  subtitle: CustomText(text: package.desc),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
