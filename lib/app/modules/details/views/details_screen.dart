import 'package:ads_project/app/core/constants/app_packages.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: mainAppBar(
        onTap: () => Get.back(),
        radius: Radius.circular(0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: SvgPicture.asset(AppIcons.arrowBackIcon),
        ),
        backgroundColor: AppColors.lightWhiteColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailsMainImageWidget(),
            const CustomVerticalSizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ford Mustang GT ',
                    style: AppTextTheme.textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const CustomVerticalSizedBox(height: 11),
                  DetailsTextInfoWidget(),
                  const CustomVerticalSizedBox(height: 25),
                  DetailsInfoDriverWidget(),
                  const CustomVerticalSizedBox(height: 27),
                  DetailsSliderWidget(),
                  const CustomVerticalSizedBox(height: 20),
                  CustomButtonWidget(
                    text: 'Order Now',
                    fontSize: 28,
                    onTap: () {
                      showTextDialog(
                        'Your request will be\n reviewed within 48 hours',
                        'Visit a gas station to apply the\n sticker',
                        AppIcons.trueIcon,
                        'Please visit the campaigns page to check the application.'
                      );
                    },
                  ),
                  const CustomVerticalSizedBox(height: 25),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
