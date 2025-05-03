import 'package:ads_project/app/core/constants/app_packages.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      extendBodyBehindAppBar: false,
      backgroundColor: AppColors.whiteColor,
      appBar: mainAppBar(
        onTap: () {
          return Get.find<RootController>().accountNavigatorKey.currentState!
              .push(MaterialPageRoute(builder: (_) => NotificationsScreen()));
        },
        radius: Radius.circular(0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SvgPicture.asset(AppIcons.notificationBlackIcon),
        ),
        actions: [
          IconButton(
            onPressed:
                () => Get.find<RootController>()
                    .accountNavigatorKey
                    .currentState!
                    .push(
                      MaterialPageRoute(builder: (_) => EditAccountScreen()),
                    ),
            icon: Text(
              'Edit',
              style: AppTextTheme.textTheme.titleLarge!.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
        backgroundColor: AppColors.whiteColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomVerticalSizedBox(height: 10),
              AccountPhotoWidget(),
              const CustomVerticalSizedBox(height: 10),
              Text(
                'Hussam Zina',
                style: AppTextTheme.textTheme.displayMedium!.copyWith(
                  color: AppColors.navyBlueColor,
                ),
              ),
              CustomVerticalSizedBox(height: 20),
              AccountProfitAndOrderWidget(),
              CustomVerticalSizedBox(height: 27),
              AccountCurrentCampaignWidget(),
              CustomVerticalSizedBox(height: 20),
              AccountSeeAllWidget(),
              CustomVerticalSizedBox(height: 13),
              AccountListInfoWidget(),
              CustomVerticalSizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
