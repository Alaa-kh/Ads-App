import 'package:ads_project/app/core/constants/app_packages.dart';

class DetailsInfoDriverWidget extends StatelessWidget {
  const DetailsInfoDriverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DetailsDriverWidget(icon: AppIcons.personIcon, number: '100'),
        DetailsDriverWidget(icon: AppIcons.coinsIcon, number: r'100$'),
        DetailsDriverWidget(icon: AppIcons.roundSpeedIcon, number: '230 km/h'),
      ],
    );
  }
}
