
import 'package:ads_project/app/shared/custom_vertical_sizedbox.dart';
import 'package:ads_project/app/themes/app_colors.dart';
import 'package:ads_project/app/themes/app_text_theme.dart';
import 'package:ads_project/app/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginMainSectionWidget extends StatelessWidget {
  const LoginMainSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Positioned(
        //   top: 1,
        //   left: 100,
        //   child: CustomPaint(
        //     size: Size(200, 100), // الحجم المطلوب
        //     painter: HalfCircle2Painter(),
        //   ),
        // ),
        // Positioned(
        //   top: 1,
        //   left: 1,
        //   child: CustomPaint(
        //     size: Size(
        //       MediaQuery.of(context).size.width * 1.5,
        //       MediaQuery.of(context).size.height,
        //     ),
        //     painter: RightHalfCircleBackground(),
        //   ),
        // ),
        Positioned(
          top: 1,
          child: FittedBox(
            child: SvgPicture.asset(
              AppIcons.ellipse1Icon,
              height: 300,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Positioned(
          top: 1,
   
          child: FittedBox(
            child: SvgPicture.asset(
           AppIcons.ellipse2Icon,
              height: 300,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomVerticalSizedBox(height: 40),
              InkWell(
                onTap: () => Get.back(),
                child: SvgPicture.asset(AppIcons.arrowIcon),
              ),
              const CustomVerticalSizedBox(height: 40),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Go ahead and set up\nyour account\n',
                      style: AppTextTheme.textTheme.bodyLarge!.copyWith(
                        color: AppColors.yellowColor,
                        height: 1.4,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign in-up to enjoy the best experience',
                      style: AppTextTheme.textTheme.labelLarge!.copyWith(
                        height: 2,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// class RightHalfCircleBackground extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final darkBlue =
//         Paint()
//           ..color = AppColors.royalBlueColor.withValues(
//             alpha: .5,
//           ) // الأزرق الداكن (خلفية)
//           ..style = PaintingStyle.fill;

//     final lightBlue =
//         Paint()
//           ..color = AppColors.secondaryColor.withValues(
//             alpha: .5,
//           ) // أزرق أفتح وشفاف
//           ..style = PaintingStyle.fill;

//     final pathDark = Path();
//     pathDark.moveTo(0, 0);
//     // pathDark.lineTo(size.width * 0.4, 0);
//     pathDark.arcTo(
//       Rect.fromLTWH(size.width * -0.2, 0, size.width - 130, 270),
//       -math.pi / 2,
//       math.pi,
//       false,
//     );
//     pathDark.lineTo(0, size.height);
//     pathDark.close();

//     final pathLight = Path();
//     // pathLight.moveTo(0, 0);
//     // pathLight.lineTo(size.width * 0.25, 0);
//     pathLight.arcTo(
//       Rect.fromLTWH(size.width * -0.5, 0, size.width - 50, 270),
//       -math.pi / 2,
//       math.pi,
//       false,
//     );
//     pathLight.lineTo(0, size.height);
//     pathLight.close();

//     canvas.drawPath(pathDark, darkBlue);
//     canvas.drawPath(pathLight, lightBlue);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }

// // class HalfCircle1Painter extends CustomPainter {
// //   @override
// //   void paint(Canvas canvas, Size size) {

// //     final paint =
// //         Paint()
// //           ..color = AppColors.secondaryColor.withValues(alpha: .5)
// //           ..strokeWidth = 200
// //           ..style = PaintingStyle.stroke;

// //     final rect = Rect.fromLTWH(0, 0, size.width, size.height * 2);
// //     canvas.drawArc(
// //       rect,
// //       math.pi-40, // بداية من الزاوية 180 درجة
// //       math.pi-40, // نصف دائرة = 180 درجة
// //       true, // false يعني "غير ممتلئة"
// //       paint,
// //     );
// //   }

// //   @override
// //   bool shouldRepaint(CustomPainter oldDelegate) => false;
// // }

// class HalfCircle2Painter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint =
//         Paint()
//           ..color = AppColors.royalBlueColor.withValues(alpha: .5)
//           ..strokeWidth = 200
//           ..style = PaintingStyle.stroke;

//     final rect = Rect.fromLTWH(0, 0, size.width, size.height * 2);
//     canvas.drawArc(
//       rect,
//       math.pi - 60, // بداية من الزاوية 180 درجة
//       math.pi - 60, // نصف دائرة = 180 درجة
//       true, // false يعني "غير ممتلئة"
//       paint,
//     );
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
