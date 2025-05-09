import 'package:ads_project/app/core/constants/app_packages.dart';

class DetailsInfoDriverWidget extends StatelessWidget {
  const DetailsInfoDriverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DetailsDriverWidget(icon: AppIcons.personIcon, label: '100'),
        DetailsDriverWidget(icon: AppIcons.coinsIcon, label: r'100$'),
        DetailsDriverWidget(icon: AppIcons.roundSpeedIcon, label: '230 km/h'),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: DetailsDriverWidget(
            icon: AppIcons.gasIcon,
            label: 'Gas\n stations',
            backgroundColor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
