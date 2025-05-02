import 'package:ads_project/app/modules/account/widgets/account_info_widget.dart';
import 'package:ads_project/app/shared/custom_vertical_sizedbox.dart';
import 'package:flutter/material.dart';

class AccountListInfoWidget extends StatelessWidget {
  const AccountListInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) => AccountInfoWidget(),
      separatorBuilder:
          (BuildContext context, int index) =>
              CustomVerticalSizedBox(height: 20),
      itemCount: 5,
    );
  }
}
