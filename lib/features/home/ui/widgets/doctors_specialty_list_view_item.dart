import 'package:flutter/material.dart';
import 'package:flutter_adv_app/core/helpers/spacing.dart';
import 'package:flutter_adv_app/core/theming/colors.dart';
import 'package:flutter_adv_app/core/theming/styles.dart';
import 'package:flutter_adv_app/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsSpecialtyListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  const DoctorsSpecialtyListViewItem(
      {super.key, this.specializationsData, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorsManager.lightBlue,
            child: SvgPicture.asset(
              'assets/svgs/general_speciality.svg',
              height: 40.h,
              width: 40.w,
            ),
          ),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? 'Specialization',
            style: TextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
