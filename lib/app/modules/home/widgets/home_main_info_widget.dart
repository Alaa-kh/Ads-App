import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/modules/home/controllers/home_controller.dart';

class HomeMainInfoWidget extends StatelessWidget {
  const HomeMainInfoWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeControllerImpl());
    return GetBuilder(
      builder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              // AppImages.persilImage,
               controller.homeModel!.data[index].ad.imagesUrl[0] ,
              height: 167,
              alignment: Alignment.center,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: ListTile(
                onTap: () => Get.to(() => DetailsScreen()),
                title: Text(
                controller.homeModel != null?    controller.homeModel!.data[index].ad.from.toString():'',
                  // 'Dec 20 - Feb 21',
                  style: AppTextTheme.textTheme.titleLarge,
                ),
                subtitle: Text(
                controller.homeModel != null?  controller.homeModel!.data[index].ad.driversNumber.toString():'',
                  // '100 Driver',
                  style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.yellowColor,
                  ),
                ),
                trailing: SvgPicture.asset(AppIcons.arrowNextIcon),
              ),
            ),
          ],
        );
      },
    );
  }
}
