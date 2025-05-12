
import 'package:ads_project/app/core/constants/app_packages.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AccountListInfoWidget extends StatelessWidget {
  const AccountListInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) => AccountInfoWidget().animate().scaleY(
                delay: Duration(microseconds: 4000),
                duration: Duration(milliseconds: 4100),
              ),
      separatorBuilder:
          (BuildContext context, int index) =>
              CustomVerticalSizedBox(height: 20),
      itemCount: 5,
    );
  }
}
