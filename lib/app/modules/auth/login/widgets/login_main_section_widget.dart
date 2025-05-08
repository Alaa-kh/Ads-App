import 'package:ads_project/app/core/constants/app_packages.dart';

class LoginMainSectionWidget extends StatelessWidget {
  const LoginMainSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
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
              const CustomVerticalSizedBox(height: 80),
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
