import 'package:ads_project/app/core/constants/app_packages.dart';

class AccountCurrentCampaignWidget extends StatefulWidget {
  const AccountCurrentCampaignWidget({super.key});

  @override
  State<AccountCurrentCampaignWidget> createState() =>
      _AccountCurrentCampaignWidgetState();
}

class _AccountCurrentCampaignWidgetState
    extends State<AccountCurrentCampaignWidget> {
  double _lowerValue = 200;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          'Current campaign',
          style: AppTextTheme.textTheme.headlineLarge!.copyWith(
            fontSize: 16,
            color: AppColors.navyBlueColor,
          ),
        ),
        CustomVerticalSizedBox(height: 13),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 16, right: 16, top: 10),
          decoration: BoxDecoration(
            color: AppColors.royalBlueColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: AppColors.lightDarkColor.withValues(alpha: 0.7),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.persil2Image, width: 55, height: 55),
                  CustomHorizontalSizedBox(width: 24),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bersil',
                        style: AppTextTheme.textTheme.headlineLarge!.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                      CustomVerticalSizedBox(height: 5),
                      Text(
                        '20 hour',
                        style: AppTextTheme.textTheme.labelLarge!.copyWith(
                          color: AppColors.whiteColor.withValues(alpha: .7),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        r'200$',
                        style: AppTextTheme.textTheme.headlineLarge!.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                      CustomVerticalSizedBox(height: 5),
                      Text(
                        'Dec 20 - Feb 21',
                        style: AppTextTheme.textTheme.labelLarge!.copyWith(
                          color: AppColors.whiteColor.withValues(alpha: .7),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    "200/km",
                    style: AppTextTheme.textTheme.headlineLarge!.copyWith(
                      fontSize: 12,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  Expanded(
                    child: FlutterSlider(
                      values: [_lowerValue],
                      max: 1000,
                      min: 200,
                      trackBar: FlutterSliderTrackBar(
                        activeTrackBarHeight: 3,
                        inactiveTrackBarHeight: 2,
                        activeTrackBar: BoxDecoration(
                          color: AppColors.greenColor,
                        ),
                        inactiveTrackBar: BoxDecoration(
                          color: AppColors.blueGrayColor.withValues(alpha: .7),
                        ),
                      ),
                      handler: FlutterSliderHandler(
                        decoration: BoxDecoration(),
                        child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: AppColors.greenColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.directions_car,
                            color: AppColors.whiteColor,
                            size: 18,
                          ),
                        ),
                      ),
                      rightHandler: FlutterSliderHandler(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.blueGrayColor,
                            shape: BoxShape.circle,
                          ),
                          width: 20,
                          height: 20,
                        ),
                      ),
                      onDragging: (handlerIndex, lowerValue, upperValue) {
                        setState(() {
                          _lowerValue = lowerValue;
                        });
                      },
                    ),
                  ),
                  Text(
                    "1000/km",
                    style: AppTextTheme.textTheme.headlineLarge!.copyWith(
                      fontSize: 12,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
