// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gmail/utilities/responsive.dart';

import '../../../../constants/widgets/popup_menu.dart';
import '../../../../theme/theme.dart';
import '../../../../utilities/scale.dart';

class CardHeader extends StatefulWidget {
  bool isAllSelected;
  CardHeader({super.key, this.isAllSelected = false});

  @override
  State<CardHeader> createState() => _CardHeaderState();
}

class _CardHeaderState extends State<CardHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Checkbox(
              value: widget.isAllSelected,
              onChanged: (val) {
                widget.isAllSelected = !widget.isAllSelected;
                setState(() {});
              }),
          SizedBox(
            width: Scale.currentScreenWidth(context) * 0.001,
          ),
          const CommonPopup(
            tip: "Select",
            items: [
              Text(
                "All",
                style: AppTheme.bodyText2,
              ),
              Text(
                "None",
                style: AppTheme.bodyText2,
              ),
              Text(
                "Read",
                style: AppTheme.bodyText2,
              ),
              Text(
                "unread",
                style: AppTheme.bodyText2,
              ),
              Text(
                "Starred",
                style: AppTheme.bodyText2,
              ),
              Text(
                "UnStarred",
                style: AppTheme.bodyText2,
              ),
            ],
            icon: Icon(Icons.arrow_drop_down),
          ),
          SizedBox(
            width: Scale.currentScreenWidth(context) * 0.01,
          ),
          IconButton(
              tooltip: "Refersh",
              onPressed: () {},
              icon: const Icon(Icons.refresh)),
          SizedBox(
            width: Scale.currentScreenWidth(context) * 0.01,
          ),
          const CommonPopup(
            tip: "More",
            items: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.mail_outline),
                  Text("Mark all as read", style: AppTheme.bodyText2)
                ],
              ),
            ],
            icon: Icon(Icons.more_vert),
          ),
          if (!Responsiveness.isLargeScreen(context) ||
              !Responsiveness.isXlLargeScreen(context))
            const Spacer(
              flex: 2,
            ),
          if (Responsiveness.isLargeScreen(context) ||
              Responsiveness.isXlLargeScreen(context))
            const CommonPopup(
              items: [
                Text("Newest", style: AppTheme.bodyText2),
                Text("Oldest", style: AppTheme.bodyText2),
              ],
              icon: Text("1-50 of 200", style: AppTheme.bodyText2),
            ),
          if (Responsiveness.isLargeScreen(context) ||
              Responsiveness.isXlLargeScreen(context))
            SizedBox(
              width: Scale.currentScreenWidth(context) * 0.01,
            ),
          if (Responsiveness.isLargeScreen(context) ||
              Responsiveness.isXlLargeScreen(context))
            IconButton(
                tooltip: "Newer",
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new)),
          if (Responsiveness.isLargeScreen(context) ||
              Responsiveness.isXlLargeScreen(context))
            SizedBox(
              width: Scale.currentScreenWidth(context) * 0.01,
            ),
          if (Responsiveness.isLargeScreen(context) ||
              Responsiveness.isXlLargeScreen(context))
            IconButton(
                tooltip: "Older",
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios)),
          if (Responsiveness.isLargeScreen(context) ||
              Responsiveness.isXlLargeScreen(context))
            SizedBox(
              width: Scale.currentScreenWidth(context) * 0.01,
            ),
          if (Responsiveness.isLargeScreen(context) ||
              Responsiveness.isXlLargeScreen(context))
            IconButton(
                tooltip: "Input tools on/off",
                onPressed: () {},
                icon: const Icon(Icons.keyboard)),
          if (Responsiveness.isLargeScreen(context) ||
              Responsiveness.isXlLargeScreen(context))
            SizedBox(
              width: Scale.currentScreenWidth(context) * 0.01,
            ),
          if (Responsiveness.isLargeScreen(context) ||
              Responsiveness.isXlLargeScreen(context))
            const CommonPopup(items: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.keyboard),
                  Text("English", style: AppTheme.bodyText2)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.keyboard),
                  Text("English Dvorak", style: AppTheme.bodyText2)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.edit),
                  Text("English", style: AppTheme.bodyText2)
                ],
              ),
            ]),
          if (Responsiveness.isLargeScreen(context) ||
              Responsiveness.isXlLargeScreen(context))
            SizedBox(
              width: Scale.currentScreenWidth(context) * 0.01,
            ),
        ],
      ),
    );
  }
}
