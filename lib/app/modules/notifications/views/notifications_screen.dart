import 'package:ads_project/app/core/constants/app_packages.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: mainAppBar(
        onTap: () => Navigator.of(context).pop(),
        title: 'Notification',
        titleColor: AppColors.blackColor,
        radius: Radius.circular(0),
        Container(
          margin: EdgeInsets.only(left: 13),
          alignment: Alignment.center,
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightGrayColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.lightDarkColor.withValues(alpha: .7),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Icon(Icons.arrow_back_ios, size: 13),
        ),

        backgroundColor: AppColors.whiteColor,
      ),
      body: SingleChildScrollView(
        child: NotificationsMainListWidget(),
      ),
    );
  }
}
