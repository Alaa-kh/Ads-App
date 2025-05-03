import 'package:ads_project/app/core/constants/app_packages.dart';

class NotificationsMainListWidget extends StatelessWidget {
  const NotificationsMainListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder:
          (BuildContext context, int index) => ListTile(
            leading: Image.asset(AppImages.falseImage,width: 44),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                'Your application for the Persil campaign has been rejected.',
                style: AppTextTheme.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '12 min ago',
                  style: AppTextTheme.textTheme.labelLarge!.copyWith(
                    fontSize: 13,
                    color: AppColors.blackColor,
                  ),
                ),
                CustomHorizontalSizedBox(width: 6),
                SvgPicture.asset(AppIcons.notificationEllipseIcon),
              ],
            ),
          ),
      separatorBuilder:
          (BuildContext context, int index) =>
              CustomVerticalSizedBox(height: 3),
      itemCount: 7,
    );
  }
}
