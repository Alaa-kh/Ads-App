import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:pinput/pinput.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,

      appBar: mainAppBar(
        radius: Radius.circular(0),
        backgroundColor: AppColors.whiteColor,
        Container(
          margin: EdgeInsets.only(left: 13),

          alignment: Alignment.center,
          width: 44,
          height: 44,
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
          child: Icon(Icons.arrow_back_ios, size: 13),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'OTP Verification',
                style: AppTextTheme.textTheme.displayMedium!.copyWith(
                  fontSize: 26,
                  color: AppColors.darkModeColor,
                ),
              ),
              CustomVerticalSizedBox(height: 10),
              Text(
                'Please check your SMS +947650555 to see the verification code',
                style: AppTextTheme.textTheme.headlineLarge!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.slateGrayColor,
                ),
                textAlign: TextAlign.center,
              ),
              CustomVerticalSizedBox(height: 50),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'OTP Code',
                  style: AppTextTheme.textTheme.titleLarge!.copyWith(
                    fontSize: 20,
                    color: AppColors.darkModeColor,
                  ),
                ),
              ),
              CustomVerticalSizedBox(height: 15),
              Pinput(
                keyboardType: TextInputType.number,
                separatorBuilder: (index) => CustomHorizontalSizedBox(width: 20),
                length: 6,
                onCompleted: (pin) {},
                useNativeKeyboard: true,
                showCursor: true,
                defaultPinTheme: PinTheme(
                  width: 55,
                  height: 60,
                  textStyle: AppTextTheme.textTheme.titleLarge!.copyWith(
                    fontSize: 19,
                    color: AppColors.darkModeColor,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.lightGrayColor,
                  ),
                ),
              ),
              CustomVerticalSizedBox(height: 50),
              CustomButtonWidget(text: 'Verify'),
            ],
          ),
        ),
      ),
    );
  }
}
