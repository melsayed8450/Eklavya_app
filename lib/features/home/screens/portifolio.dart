import 'package:eklavya_app/common/utils/app_colors.dart';
import 'package:eklavya_app/common/utils/assets.dart';
import 'package:eklavya_app/features/home/screens/project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PoftifolioPage extends StatelessWidget {
  const PoftifolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: AppColors.primaryColor,
            unselectedLabelColor: Colors.black,
            labelStyle: GoogleFonts.roboto(
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
            ),
            unselectedLabelStyle: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
            indicatorColor: AppColors.primaryColor,
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: true,
            tabs: const <Tab>[
              Tab(text: 'Project'),
              Tab(text: 'Saved'),
              Tab(text: 'Shared'),
              Tab(text: 'Achievement'),
            ],
          ),
          title: Text(
            'Portfolio',
            style: GoogleFonts.roboto(
              color: Colors.black,
            ),
          ),
          actions: [
            SvgPicture.asset(AppAssets.cartIcon),
            SizedBox(
              width: 25.w,
            ),
            SvgPicture.asset(AppAssets.notificationIcon),
            SizedBox(
              width: 20.w,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const ProjectPage(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
