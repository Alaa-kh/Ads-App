
import 'package:ads_project/app/core/constants/app_packages.dart';

class AccountProfitAndOrderWidget extends StatelessWidget {
  const AccountProfitAndOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              r'200$',
              style: AppTextTheme.textTheme.headlineLarge!.copyWith(
                color: AppColors.navyBlueColor,
              ),
            ),
            Text(
              'Profit',
              style: AppTextTheme.textTheme.bodyMedium!.copyWith(fontSize: 15),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              '19',
              style: AppTextTheme.textTheme.headlineLarge!.copyWith(
                color: AppColors.navyBlueColor,
              ),
            ),
            Text(
              'Order',
              style: AppTextTheme.textTheme.bodyMedium!.copyWith(fontSize: 15),
            ),
          ],
        ),
      ],
    );
  }
}
