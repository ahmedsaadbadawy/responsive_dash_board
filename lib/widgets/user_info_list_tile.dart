import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import '../models/users_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key, required this.usersInfoModel,
  });
  final UsersInfoModel usersInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(usersInfoModel.image),
          title: Text(
            usersInfoModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            usersInfoModel.subTitle,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
