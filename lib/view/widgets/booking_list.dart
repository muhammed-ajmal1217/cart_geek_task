import 'package:cartgeek/constants/app_colors.dart';
import 'package:cartgeek/controller/home_controller.dart';
import 'package:cartgeek/view/widgets/button_widget.dart';
import 'package:cartgeek/view/widgets/custom_booking_widget.dart';
import 'package:cartgeek/view/widgets/custom_container_button.dart';
import 'package:cartgeek/view/widgets/custom_text.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BookingList extends StatelessWidget {
   BookingList({
    super.key,
    required this.size,
    required this.provider
  });

  final Size size;
  HomeController provider;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: provider.bookingList.length,
      itemBuilder: (context, index) {
        final booking = provider.bookingList[index];
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            height: size.height * 0.24,
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(
                      blurStyle: BlurStyle.outer,
                      color: Color.fromARGB(255, 234, 233, 233),
                      spreadRadius: 1,
                      offset: Offset(0, 0),
                      blurRadius: 20)
                ],
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: booking.title,
                        color: AppColors.lightPink,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                          height: 22,
                          child: ButtonWidget(
                            text: 'Start',
                            fontSize: 12,
                            textColor: AppColors.white,
                            backgroundColor: AppColors.lightPink,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      CurrentBookingWidget(
                        size: size,
                        date: booking.fromDate,
                        time: booking.fromTime,
                        text: 'From',
                      ),
                      SizedBox(
                        width: size.width * 0.20,
                      ),
                      CurrentBookingWidget(
                        size: size,
                        date: booking.toDate,
                        time: booking.toTime,
                        text: 'To',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ContainerButton(
                        text: 'Rate us',
                        icon: EneftyIcons.star_outline,
                      ),
                      ContainerButton(
                        text: 'Location',
                        icon: EneftyIcons.location_outline,
                      ),
                      ContainerButton(
                        text: 'Surveillance',
                        icon: EneftyIcons.wifi_outline,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}