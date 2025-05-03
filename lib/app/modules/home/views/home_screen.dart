import 'package:ads_project/app/core/constants/app_packages.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: mainAppBar(
        backgroundImagePath:  AppIcons.ellipse2Icon,
        onTap: () {
          return Get.find<RootController>().homeNavigatorKey.currentState!.push(
            MaterialPageRoute(builder: (_) => NotificationsScreen()),
          );
        },
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SvgPicture.asset(AppIcons.notificationIcon),
        ),
        title: 'Home Page',
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const CustomVerticalSizedBox(height: 30),
              ListView.separated(
                separatorBuilder:
                    (BuildContext context, int index) =>
                        const CustomVerticalSizedBox(height: 55),
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder:
                    (BuildContext context, int index) => HomeMainListWidget(),
                itemCount: 5,
              ),
              const CustomVerticalSizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
