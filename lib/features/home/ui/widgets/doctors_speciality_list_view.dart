import 'package:flutter/material.dart';
import 'package:flutter_adv_app/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_adv_app/features/home/ui/widgets/doctors_specialty_list_view_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialtyListView extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  const DoctorsSpecialtyListView(
      {super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList.length,
        itemBuilder: (context, index) {
          return DoctorsSpecialtyListViewItem(
            specializationsData: specializationDataList[index],
            itemIndex: index,
          );
        },
      ),
    );
  }
}
