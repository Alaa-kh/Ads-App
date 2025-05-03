import 'package:ads_project/app/core/constants/app_packages.dart';

class HomeMainInfoWidget extends StatelessWidget {
  const HomeMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          AppImages.persilImage,
          height: 167,
          alignment: Alignment.center,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: ListTile(
            onTap: () => Get.to(() => DetailsScreen()),
            title: Text(
              'Dec 20 - Feb 21',
              style: AppTextTheme.textTheme.titleLarge,
            ),
            subtitle: Text(
              '100 Driver',
              style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.yellowColor,
              ),
            ),
            trailing:  SvgPicture.asset(AppIcons.arrowNextIcon),
            
          ),
        ),
      ],
    );
  }
}
