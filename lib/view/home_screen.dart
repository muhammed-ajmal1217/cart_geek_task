import 'package:cartgeek/constants/app_colors.dart';
import 'package:cartgeek/controller/home_controller.dart';
import 'package:cartgeek/view/widgets/booking_list.dart';
import 'package:cartgeek/view/widgets/custom_text.dart';
import 'package:cartgeek/view/widgets/custom_drawer.dart';
import 'package:cartgeek/view/widgets/package_list.dart';
import 'package:cartgeek/view/widgets/top_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    final provider = Provider.of<HomeController>(context, listen: false);
    provider.fetchBookingData();
    provider.fetchPackageData();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
      ),
      endDrawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.mediumPink,
                        width: 2,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/portrait-cute-smiley-woman.jpg'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Welcome'),
                      CustomText(
                        text: 'Emily Cyrus',
                        color: AppColors.lightPink,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: size.height * 0.25,
                width: double.infinity,
                child: Stack(
                  children: [
                    const TopContainer(),
                    Positioned(
                        right: 0,
                        top: 0,
                        bottom: 0,
                        child: Container(
                          width: size.width * 0.4,
                          decoration: BoxDecoration(
                              color: AppColors.mediumPink.withOpacity(0.5),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(150),
                                  bottomRight: Radius.circular(20))),
                        )),
                    Positioned(
                        right: 0,
                        top: 0,
                        bottom: 0,
                        child: Image.asset(
                          "assets/mother_baby.png",
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15),
              child: CustomText(
                text: 'Your Current Booking',
                color: AppColors.darkViolet,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Consumer<HomeController>(
              builder: (context, provider, child) => BookingList(
                size: size,
                provider: provider,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: CustomText(
                text: 'Packages',
                color: AppColors.darkViolet,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Consumer<HomeController>(
              builder: (context, provider, child) => PackageList(
                provider: provider,
              ),
            )
          ],
        ),
      ),
    );
  }
}
