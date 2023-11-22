import 'package:eklavya_app/common/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint paint = Paint()
      ..color = AppColors.primaryColor
      ..strokeWidth = 5
      ..isAntiAlias = true;

    canvas.drawLine(
        Offset(offset.dx + 36, offset.dy), Offset(60.w + offset.dx, 0), paint);
  }
}
