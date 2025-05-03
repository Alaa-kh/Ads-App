import 'package:ads_project/app/core/constants/app_packages.dart';

class DetailsInfoDriverWidget extends StatelessWidget {
  const DetailsInfoDriverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DetailsDriverWidget(icon: AppImages.personImage, number: '100'),
        DetailsDriverWidget(icon: AppImages.coinsImage, number: r'100$'),
        DetailsDriverWidget(icon: AppImages.roundSpeedImage, number: '230 km/h'),
      ],
    );
  }
}
