import 'package:ads_project/app/core/constants/app_packages.dart';

class DetailsMainImageWidget extends StatelessWidget {
  const DetailsMainImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 228,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.lightWhiteColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Image.asset(AppImages.persil2Image, alignment: Alignment.center),
    );
  }
}
