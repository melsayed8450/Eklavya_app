import 'package:eklavya_app/common/utils/app_colors.dart';
import 'package:eklavya_app/common/utils/assets.dart';
import 'package:eklavya_app/common/widgets/project_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            width: 104.w,
            height: 34.h,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryColor.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppAssets.filterIcon,
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  'Filter',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: SizedBox(
              height: 44.h,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search a project',
                  labelStyle: GoogleFonts.roboto(
                    color: Colors.grey,
                    fontSize: 14.sp,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.w,
                      vertical: 7.h,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 15.h,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.greyColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const ProjectWidget(imagePath: AppAssets.pic1),
          const ProjectWidget(imagePath: AppAssets.pic2),
          const ProjectWidget(imagePath: AppAssets.pic3),
          const ProjectWidget(imagePath: AppAssets.pic4),
          const ProjectWidget(imagePath: AppAssets.pic1),
          const ProjectWidget(imagePath: AppAssets.pic2),
          const ProjectWidget(imagePath: AppAssets.pic3),
          const ProjectWidget(imagePath: AppAssets.pic4),
        ],
      ),
    );
  }
}
