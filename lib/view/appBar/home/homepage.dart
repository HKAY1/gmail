import 'package:flutter/material.dart';
import 'package:gmail/constants/colors.dart';
import 'package:gmail/constants/widgets/popup_menu.dart';
import 'package:gmail/utilities/responsive.dart';
import 'package:gmail/view/appBar/home/widgets/card_header.dart';
import 'package:gmail/view/appBar/home/widgets/card_items.dart';
import 'package:gmail/view/appBar/home/widgets/card_tabs.dart';

import '../../../constants/widgets/textfeild.dart';
import '../../../theme/theme.dart';
import '../../../utilities/scale.dart';
import 'widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Scale.initialize();
    super.initState();
  }

  bool isAllSelected = false;
  int selectedTab = 0;
  int? selectedItem;
  bool isDrawerExpanded = false;
  bool isSideDrawerHidden = false;
  Widget sideDrawer = const SideDrawer();

  void toggleDrawerExpansion() {
    isDrawerExpanded = !isDrawerExpanded;
    setState(() {});
  }

  void animateWidget() {
    isSideDrawerHidden = !isSideDrawerHidden;
    setState(() {});
    if (isSideDrawerHidden) {
      sideDrawer = const SizedBox();
      setState(() {});
    } else {
      sideDrawer = const SideDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: animateWidget,
          child: (isSideDrawerHidden)
              ? const Icon(Icons.arrow_back)
              : const Icon(Icons.arrow_forward),
        ),
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          leading: IconButton(
              onPressed: toggleDrawerExpansion, icon: const Icon(Icons.menu)),
          title: Row(
            children: [
              const Icon(Icons.mail),
              SizedBox(
                width: Scale.currentScreenWidth(context) * 0.005,
              ),
              const Text(
                "Gmail",
                style: AppTheme.headline5,
              ),
              const Spacer(),
              Container(
                decoration: const BoxDecoration(
                    // color: AppColors.lightBlueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                width: (Responsiveness.isLargeScreen(context) ||
                        Responsiveness.isXlLargeScreen(context))
                    ? Scale.currentScreenWidth(context) * 0.6
                    : Scale.currentScreenWidth(context) * 0.5,
                child: const AppTextField(
                  radius: BorderRadius.all(Radius.circular(30)),
                  isborderNeeded: false,
                  hintText: "Search",
                  prefix: Icon(Icons.search),
                  suffix: Icon(Icons.filter_list_sharp),
                  color: AppColors.lightBlueGrey,
                ),
              ),
              const Spacer(),
            ],
          ),
          actions: [
            if (Responsiveness.isLargeScreen(context) ||
                Responsiveness.isXlLargeScreen(context))
              const CommonPopup(
                  tip: "Support",
                  items: [
                    Text(
                      "Help",
                      style: AppTheme.bodyText2,
                    ),
                    Text(
                      "Training",
                      style: AppTheme.bodyText2,
                    ),
                    Text(
                      "Updates",
                      style: AppTheme.bodyText2,
                    ),
                    Text(
                      "Send Feedback to Google",
                      style: AppTheme.bodyText2,
                    ),
                  ],
                  icon: Icon(Icons.question_mark)),
            if (Responsiveness.isLargeScreen(context) ||
                Responsiveness.isXlLargeScreen(context))
              SizedBox(
                width: Scale.currentScreenWidth(context) * 0.008,
              ),
            if (Responsiveness.isLargeScreen(context) ||
                Responsiveness.isXlLargeScreen(context))
              const Icon(Icons.settings),
            if (Responsiveness.isLargeScreen(context) ||
                Responsiveness.isXlLargeScreen(context))
              SizedBox(
                width: Scale.currentScreenWidth(context) * 0.008,
              ),
            if (Responsiveness.isLargeScreen(context) ||
                Responsiveness.isXlLargeScreen(context))
              const Icon(Icons.more_vert_rounded),
            SizedBox(
              width: Scale.currentScreenWidth(context) * 0.008,
            ),
            const CircleAvatar(),
            SizedBox(
              width: Scale.currentScreenWidth(context) * 0.008,
            ),
          ],
        ),
        body: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 45),
              height: Scale.currentScreenHeight(context) * 80,
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        CardHeader(
                          isAllSelected: isAllSelected,
                        ),
                        ListView(
                          shrinkWrap: true,
                          children: [
                            Tabs(
                              selectedTab: selectedTab,
                            ),
                            CardItems(
                              selectedItem: selectedItem,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: sideDrawer)
                ],
              ),
            ),
            MyDrawer(
              isDrawerExpanded: isDrawerExpanded,
              toggleDrawerExpansion: toggleDrawerExpansion,
            )
          ],
        ),
      ),
    );
  }
}
