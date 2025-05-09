import 'package:ads_project/app/core/constants/app_packages.dart';

void showTextDialog(
  String title,
  String subTitle,
  String icon,
  String? text, [
  Function()? onTap,
]) {
  Get.dialog(
    AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      surfaceTintColor: AppColors.yellowColor,
      backgroundColor: AppColors.whiteColor,
      contentPadding: EdgeInsets.zero,
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(icon, width: 44, height: 44),
            const CustomVerticalSizedBox(height: 10),

            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const CustomVerticalSizedBox(height: 5),
            Text(
              subTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xff7D848D),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const CustomVerticalSizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    text ?? '',
                    textAlign: TextAlign.center,
                    style: AppTextTheme.textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(6),
                  width: 36,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.arrow_forward,color: AppColors.whiteColor),
                ),
              ],
            ),
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
    ),
    barrierDismissible: true,
  );
}
