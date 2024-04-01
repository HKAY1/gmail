import 'package:flutter/material.dart';
import 'package:gmail/constants/widgets/textfeild.dart';
import 'package:gmail/theme/theme.dart';
import 'package:gmail/utilities/scale.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      title: Row(
        children: [
          const Icon(Icons.mail),
          const Text(
            "Gmail",
            style: AppTheme.headline5,
          ),
          SizedBox(
            width: Scale.currentScreenWidth(context) * 0.4,
            child: AppTextField(
              radius: BorderRadius.circular(16),
              isborderNeeded: true,
              hintText: "Search",
              prefix: const Icon(Icons.search),
              suffix: const Icon(Icons.filter_list_sharp),
            ),
          ),
        ],
      ),
      actions: const [
        Icon(Icons.question_mark),
        Icon(Icons.settings),
        Icon(Icons.more_vert_rounded),
        CircleAvatar()
      ],
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
