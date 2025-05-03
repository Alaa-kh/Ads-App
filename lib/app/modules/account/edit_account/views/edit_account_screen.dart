
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
                hintText: 'Hussam Zina',
              ),
              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: SvgPicture.asset(AppIcons.phoneIcon),
                hintText: '0947650539',
              ),
              const CustomVerticalSizedBox(height: 18),
              CustomTextField(
                prefixIcon: SvgPicture.asset(AppIcons.passwordIcon),
                hintText: 'husam123',
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
