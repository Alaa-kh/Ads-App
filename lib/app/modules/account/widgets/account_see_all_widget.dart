
import 'package:ads_project/app/core/constants/app_packages.dart';

class AccountSeeAllWidget extends StatelessWidget {
  const AccountSeeAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Campaigns',
          style: AppTextTheme.textTheme.headlineLarge!.copyWith(
            fontSize: 16,
            color: AppColors.navyBlueColor,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'See all',
            style: AppTextTheme.textTheme.bodyMedium!.copyWith(
              fontSize: 13,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
