import 'package:ads_project/app/core/constants/app_packages.dart';

class RootScreen extends GetView<RootController> {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RootController());
    return GetBuilder<RootController>(
      builder:
          (_) => Scaffold(
            body: IndexedStack(
              index: controller.currentIndex,
              children: controller.screens,
            ),
            bottomNavigationBar: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: AppColors.lightDarkColor, blurRadius: 22),
                  ],
                ),
                child: SizedBox(
                  height: 80,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 1,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: SvgPicture.asset(
                            AppIcons.rectangleIcon,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                            height: 90,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => controller.seletedPage(0),
                            child: SvgPicture.asset(
                              AppIcons.homeIcon,
                              colorFilter:
                                  controller.currentIndex == 0
                                      ? ColorFilter.mode(
                                        AppColors.yellowColor,
                                        BlendMode.srcIn,
                                      )
                                      : null,
                            ),
                          ),
                          InkWell(
                            onTap: () => controller.seletedPage(1),
                            child: Image.asset(
                            AppImages.scanImage
                            ),
                          ),
                          InkWell(
                            onTap: () => controller.seletedPage(2),
                            child: SvgPicture.asset(
                              AppIcons.accountIcon,
                              colorFilter:
                                  controller.currentIndex == 2
                                      ? ColorFilter.mode(
                                        AppColors.yellowColor,
                                        BlendMode.srcIn,
                                      )
                                      : null,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
