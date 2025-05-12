import 'package:ads_project/app/core/constants/app_packages.dart';

class LoginOrRegisterWidget extends StatelessWidget {
  const LoginOrRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return GetBuilder<LoginControllerImp>(
      builder: (controller) {
        return Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomVerticalSizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 5,
                    ),
                    height: 55,
                    decoration: BoxDecoration(
                      color: AppColors.lightDarkColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TabBar(
                      controller: controller.tabController,
                      onTap: (_) => controller.update(),
                      indicator: ShapeDecoration(
                        color: AppColors.whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: const BorderSide(
                            color: AppColors.yellowColor,
                            width: 1,
                          ),
                        ),
                      ),
                      dividerColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: Colors.transparent,
                      labelStyle: AppTextTheme.textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      unselectedLabelStyle: AppTextTheme.textTheme.bodyMedium!
                          .copyWith(color: AppColors.darkColor),
                      labelColor: AppColors.yellowColor,
                      tabs: const [Tab(text: "Login"), Tab(text: "Register")],
                    ),
                  ),
                  const CustomVerticalSizedBox(height: 25),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: KeyedSubtree(
                      key: ValueKey<int>(controller.tabController.index),
                      child: controller.getCurrentTabView(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
