import 'package:ads_project/app/core/constants/app_packages.dart';

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
              ),
              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: Image.asset(AppIcons.emailIcon, width: 20),
                hintText: 'Email',
                validator:
                    (email) => FormsValidate.getEmailValidate(context, email),
              ),
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
              ),
            
              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: SvgPicture.asset(AppIcons.ageIcon),
                hintText: 'Your age',
                textInputType: TextInputType.number,
                validator: (age) => FormsValidate.getAgeValidate(context, age),
              ),
              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: SvgPicture.asset(AppIcons.phoneIcon),
                hintText: 'Phone No.',
                validator:
                    (phone) =>
                        FormsValidate.getPhoneNumberValidate(context, phone),
              ),
       
              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: Image.asset(AppIcons.carNumberIcon, width: 20),
                hintText: 'Car number',
                validator:
                    (carNumber) =>
                        FormsValidate.getCarNumberValidate(context, carNumber),
              ),

              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: Image.asset(AppIcons.carNumberIcon, width: 20),
                hintText: 'Car Year',
                textInputType: TextInputType.number,
                validator:
                    (carYear) =>
                        FormsValidate.getCarYearValidate(context, carYear),
              ),
              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: Image.asset(AppIcons.carNameIcon, width: 20),
                hintText: 'Car Name',
                validator:
                    (carName) =>
                        FormsValidate.getCarNameValidate(context, carName),
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
