import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/users_info_model.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import '../utils/app_images.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});

  static const List<UsersInfoModel> items = [
    UsersInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UsersInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UsersInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              usersInfoModel: items[index],
            ),
          );
        },
      ),
    );
  }
}
