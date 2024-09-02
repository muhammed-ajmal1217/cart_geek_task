import 'package:cartgeek/constants/app_colors.dart';
import 'package:cartgeek/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: AppColors.white,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:AppColors.mediumPink, 
                      width: 2, 
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage('assets/portrait-cute-smiley-woman.jpg'),
                  ),
                ),
                const SizedBox(height: 10),
                CustomText(
                  text: 'Emily Cyrus',
                  color: AppColors.lightPink,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children:  [
                ListTile(
                 title:  CustomText(text:'Home',color: AppColors.darkBlue,fontWeight: FontWeight.w800,),
                ),
                Divider(),
                ListTile(
                 title:  CustomText(text:'Book A Nanny',color: AppColors.darkBlue,fontWeight: FontWeight.w800,),
                ),
                Divider(),
                ListTile(
                 title:  CustomText(text:'How it Works',color: AppColors.darkBlue,fontWeight: FontWeight.w800,),
                ),
                Divider(),
                ListTile(
                 title:  CustomText(text:'Why Nanny Vanny',color: AppColors.darkBlue,fontWeight: FontWeight.w800,),
                ),
                Divider(),
                ListTile(
                 title:  CustomText(text:'My Bookings',color: AppColors.darkBlue,fontWeight: FontWeight.w800,),
                ),
                Divider(),
                ListTile(
                 title:  CustomText(text:'My Profile',color: AppColors.darkBlue,fontWeight: FontWeight.w800,),
                ),
                Divider(),
                ListTile(
                 title:  CustomText(text:'Support',color: AppColors.darkBlue,fontWeight: FontWeight.w800,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
