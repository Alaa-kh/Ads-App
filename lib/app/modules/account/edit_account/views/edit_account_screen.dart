import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:flutter_animate/flutter_animate.dart';

class EditAccountScreen extends StatelessWidget {
  const EditAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: AppColors.whiteColor,
      appBar: mainAppBar(
        onTap: () => Navigator.of(context).pop(),
        radius: Radius.circular(0),
         Container(
          margin: EdgeInsets.only(left: 13),
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightGrayColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.lightDarkColor.withValues(alpha:  0.7),
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

        backgroundColor: AppColors.whiteColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              CustomVerticalSizedBox(height: 25),
              EditAccountPhotoWidget(),
              const CustomVerticalSizedBox(height: 50),
              CustomTextField(
                prefixIcon: SvgPicture.asset(AppIcons.nameIcon),
                hintText: 'Full Name',
                validator:
                    (name) => FormsValidate.getNameValidate(context, name),
              ).animate().slideX(
                delay: Duration(microseconds: 1000),
                duration: Duration(milliseconds: 500),
              ),
              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: Image.asset(AppIcons.emailIcon, width: 20),
                hintText: 'Email',
                validator:
                    (email) => FormsValidate.getEmailValidate(context, email),
              ).animate().slideX(
                    delay: Duration(microseconds: 1000),
                    duration: Duration(milliseconds: 700)),
              const CustomVerticalSizedBox(height: 18),

              CustomTextField(
                prefixIcon: SvgPicture.asset(AppIcons.passwordIcon),
                hintText: 'Password',
                validator:
                    (password) => FormsValidate.getPasswordValidate(
                      context,
                      password,
                      isFillOldPassword: true,
                    ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: SvgPicture.asset(
                      AppIcons.eyeVisibilityIcon,
                      width: 19,
                      height: 19,
                      colorFilter: ColorFilter.mode(
                        AppColors.warmGrayColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ).animate().slideX(
                delay: Duration(microseconds: 1000),
                duration: Duration(milliseconds: 900),
              ),
            
              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: SvgPicture.asset(AppIcons.ageIcon),
                hintText: 'Your age',
                textInputType: TextInputType.number,
                validator: (age) => FormsValidate.getAgeValidate(context, age),
              ).animate().slideX(
                delay: Duration(microseconds: 1000),
                duration: Duration(milliseconds: 1300),
              ),
              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: SvgPicture.asset(AppIcons.phoneIcon),
                hintText: 'Phone No.',
                validator:
                    (phone) =>
                        FormsValidate.getPhoneNumberValidate(context, phone),
              ).animate().slideX(
                delay: Duration(microseconds: 1000),
                duration: Duration(milliseconds: 1500),
              ),
       
              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: Image.asset(AppIcons.carNumberIcon, width: 20),
                hintText: 'Car number',
                validator:
                    (carNumber) =>
                        FormsValidate.getCarNumberValidate(context, carNumber),
              ).animate().slideX(
                delay: Duration(microseconds: 1000),
                duration: Duration(milliseconds: 1700),
              ),

              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: Image.asset(AppIcons.carNumberIcon, width: 20),
                hintText: 'Car Year',
                textInputType: TextInputType.number,
                validator:
                    (carYear) =>
                        FormsValidate.getCarYearValidate(context, carYear),
              ).animate().slideX(
                delay: Duration(microseconds: 1000),
                duration: Duration(milliseconds: 1900),
              ),
              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: Image.asset(AppIcons.carNameIcon, width: 20),
                hintText: 'Car Name',
                validator:
                    (carName) =>
                        FormsValidate.getCarNameValidate(context, carName),
              ).animate().slideX(
                delay: Duration(microseconds: 1000),
                duration: Duration(milliseconds: 2100),
              ),
              CustomVerticalSizedBox(height: 30),
              CustomButtonWidget(text: 'Save Changes'),
              const CustomVerticalSizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
