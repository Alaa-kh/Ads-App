import 'package:ads_project/app/core/constants/app_packages.dart';

class RegisterDropdownWidget extends StatelessWidget {
  const RegisterDropdownWidget({
    super.key,
    required this.textController,
    required this.icon,
    required this.labelText,
    required this.list,
    required this.value,
  });

  final TextEditingController textController;
  final String icon;
  final String labelText;
  final List<String> list;
  final String value;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterControllerImpl>(
      builder:
          (controller) => DropdownButtonFormField<String>(
            itemHeight: 52,
            value:
                list.contains(textController.text) ? textController.text : null,

            items:
                list
                    .map(
                      (value) =>
                          DropdownMenuItem(value: value, child: Text(value)),
                    )
                    .toList(),
            onChanged: (value) {
              controller.select(value!, textController);
            },
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Image.asset(icon, width: 20),
              ),
              labelText: labelText,
              labelStyle: AppTextTheme.textTheme.bodyMedium!.copyWith(
                color: AppColors.darkColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: AppColors.lightDarkColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: AppColors.lightDarkColor),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: AppColors.lightDarkColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: AppColors.lightDarkColor),
              ),
            ),

            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.warmGrayColor,
            ),
          ),
    );
  }
}
