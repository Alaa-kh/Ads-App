import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/modules/auth/verify/controllers/verify_controller.dart';
import 'package:pinput/pinput.dart';

String code = '';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyControllerImp());
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: mainAppBar(
        onTap: () => Get.back(),
        radius: Radius.circular(0),
        backgroundColor: AppColors.whiteColor,
        Container(
          margin: EdgeInsets.only(left: 13),
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightGrayColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.lightDarkColor.withValues(alpha: 0.7),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 5),
            child: Icon(Icons.arrow_back_ios, size: 18),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: GetBuilder<VerifyControllerImp>(
            builder:
                (_) => Column(
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
                      'Please check your Email  to see the verification code',
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
                    AutofillGroup(
                      child: Pinput(
                        isCursorAnimationEnabled: true,
                        autofillHints: const [AutofillHints.oneTimeCode],
                        keyboardType: TextInputType.number,
                        separatorBuilder:
                            (index) => CustomHorizontalSizedBox(width: 20),
                        length: 6,
                        onCompleted: (pin) {
                          setState(() {
                            code = pin;
                            controller.verify(code);
                          });
                        },
                        useNativeKeyboard: true,
                        showCursor: true,
                        defaultPinTheme: PinTheme(
                          width: 55,
                          height: 60,
                          textStyle: AppTextTheme.textTheme.titleLarge!
                              .copyWith(
                                fontSize: 19,
                                color: AppColors.darkModeColor,
                              ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.lightGrayColor,
                          ),
                        ),
                      ),
                    ),
                    CustomVerticalSizedBox(height: 50),
                    CustomButtonWidget(
                      text: 'Verify',
                      onTap: () {
                        controller.verify(code);
                      },
                    ),
                    CustomVerticalSizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => TextButton(
                            onPressed:
                                controller.canResend.value
                                    ? () {
                                      controller.resendCode();
                                    }
                                    : null,
                            child: Text(
                              controller.canResend.value
                                  ? 'Resend code'
                                  : 'Resend code to',
                              style: TextStyle(
                                color:
                                    controller.canResend.value
                                        ? AppColors.primaryColor
                                        : AppColors.slateGrayColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Obx(
                          () => Text(
                            controller.canResend.value
                                ? ''
                                : controller.formattedTime,
                            style: TextStyle(
                              color: AppColors.slateGrayColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          ),
        ),
      ),
    );
  }
}
