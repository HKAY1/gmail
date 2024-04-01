// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../theme/theme.dart';
import '../../../../utilities/responsive.dart';
import '../../../../utilities/scale.dart';

class Tabs extends StatefulWidget {
  int selectedTab;
  Tabs({super.key, this.selectedTab = 0});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final List tabdata = [
    {"text": "Primary", "icon": Icons.panorama_outlined},
    {"text": "Promotions", "icon": Icons.bookmark_outline},
    {"text": "Social", "icon": Icons.people_outline}
  ];
  Color tabColor = AppColors.white;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
            3,
            (index) => InkWell(
                  onTap: () {
                    widget.selectedTab = index;
                    setState(() {});
                  },
                  onHover: (value) {
                    if (value && widget.selectedTab == index) {
                      tabColor = AppColors.lightGrey;
                      setState(() {});
                    } else {
                      tabColor = AppColors.white;
                      setState(() {});
                    }
                  },
                  child: Flexible(
                    child: Container(
                      color: (widget.selectedTab == index)
                          ? tabColor
                          : AppColors.white,
                      width: (Responsiveness.isLargeScreen(context) ||
                              Responsiveness.isXlLargeScreen(context))
                          ? Scale.currentScreenWidth(context) * 0.2
                          : Scale.currentScreenWidth(context) * 0.24,
                      height: Scale.currentScreenHeight(context) * 0.08,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                tabdata[index]["icon"],
                                color: (widget.selectedTab == index)
                                    ? AppColors.darkSkyBlue
                                    : AppColors.black,
                              ),
                              SizedBox(
                                width:
                                    Scale.currentScreenWidth(context) * 0.015,
                              ),
                              FittedBox(
                                child: Text(
                                  tabdata[index]["text"],
                                  style: AppTheme.bodyText1.copyWith(
                                    color: (widget.selectedTab == index)
                                        ? AppColors.darkSkyBlue
                                        : AppColors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Visibility(
                            visible: index == widget.selectedTab,
                            child: const Divider(
                              color: AppColors.blue,
                              height: 2,
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
