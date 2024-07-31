import 'package:flutter/material.dart';
import 'package:flutter_adv_app/core/helpers/spacing.dart';
import 'package:flutter_adv_app/features/home/widgets/doctors_blue_container.dart';
import 'package:flutter_adv_app/features/home/widgets/doctors_list_view.dart';
import 'package:flutter_adv_app/features/home/widgets/doctors_speciality_list_view.dart';
import 'package:flutter_adv_app/features/home/widgets/doctors_speciality_see_all.dart';
import 'package:flutter_adv_app/features/home/widgets/home_top_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24.h),
              const DoctorsSpecialtySeeAll(),
              verticalSpace(18),
              const DoctorsSpecialtyListView(),
              verticalSpace(8),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
