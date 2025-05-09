import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:ads_project/app/modules/receipt/widgets/receipt_dropdown_widget.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: AppColors.whiteColor,
      appBar: mainAppBar(
        title: 'Receipt details',
        titleColor: AppColors.blackColor,
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
              CustomVerticalSizedBox(height: 50),
              ReceiptDropdownWidget(
                icon: AppIcons.listIcon,
                labelText: 'How to receive profits',
                value: '',
              ),
              CustomVerticalSizedBox(height: 20),
              ReceiptDropdownWidget(
                icon: AppIcons.centerIcon,
                labelText: 'Available center',
                value: '',
              ),
              CustomVerticalSizedBox(height: 70),
              CustomButtonWidget(text: 'Save')

            ],
          ),
        ),
      ),
    );
  }
}
