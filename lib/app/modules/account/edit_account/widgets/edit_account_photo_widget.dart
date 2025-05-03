
import 'package:ads_project/app/core/constants/app_packages.dart';

class EditAccountPhotoWidget extends StatelessWidget {
  const EditAccountPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 135,
          height: 135,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.lightDarkColor.withValues(alpha: .7),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 5,
          right: 8,
          child: InkWell(
            onTap: () {},
            child: SvgPicture.asset(AppIcons.editIcon),
          ),
        ),
      ],
    );
  }
}
