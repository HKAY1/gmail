// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gmail/constants/colors.dart';
import 'package:gmail/theme/theme.dart';
import 'package:gmail/utilities/scale.dart';

import '../../../../utilities/responsive.dart';

class MyDrawer extends StatefulWidget {
  bool isDrawerExpanded;
  final Function toggleDrawerExpansion;
  MyDrawer(
      {super.key,
      this.isDrawerExpanded = false,
      required this.toggleDrawerExpansion});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final drawerWidth = 65.0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.toggleDrawerExpansion();
      },
      onHover: (value) {
        widget.toggleDrawerExpansion();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: widget.isDrawerExpanded
            ? (Responsiveness.isLargeScreen(context) ||
                    Responsiveness.isXlLargeScreen(context))
                ? Scale.currentScreenWidth(context) * 0.2
                : Scale.currentScreenWidth(context) * 0.4
            : drawerWidth,
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          boxShadow: widget.isDrawerExpanded
              ? [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 5,
                      spreadRadius: 2)
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Scale.currentScreenHeight(context) * 0.04),
            Center(
              child: SizedBox(
                width: (widget.isDrawerExpanded)
                    ? (Responsiveness.isLargeScreen(context) ||
                            Responsiveness.isXlLargeScreen(context))
                        ? Scale.currentScreenWidth(context) * 0.15
                        : Scale.currentScreenWidth(context) * 0.25
                    : 40,
                child: (widget.isDrawerExpanded)
                    ? ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: AppColors.black,
                        ),
                        label: const Text(
                          "Compose",
                          style: AppTheme.bodyText2,
                        ))
                    : Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(Icons.edit)),
              ),
            ),
            SizedBox(height: Scale.currentScreenHeight(context) * 0.04),
            ListTile(
              title: Row(
                children: [
                  const Icon(
                    Icons.inbox,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  if (widget.isDrawerExpanded)
                    const Text(
                      'Inbox',
                      style: AppTheme.bodyText2,
                    ),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  if (widget.isDrawerExpanded)
                    const Text(
                      'Starred',
                      style: AppTheme.bodyText2,
                    ),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(
                    Icons.send,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  if (widget.isDrawerExpanded)
                    const Text(
                      'Sent',
                      style: AppTheme.bodyText2,
                    ),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(
                    Icons.drafts,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  if (widget.isDrawerExpanded)
                    const Text(
                      'Drafts',
                      style: AppTheme.bodyText2,
                    ),
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(
                    Icons.settings,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  if (widget.isDrawerExpanded)
                    const Text(
                      'Settings',
                      style: AppTheme.bodyText2,
                    ),
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SideDrawer extends StatefulWidget {
  const SideDrawer({super.key});

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Scale.currentScreenHeight(context) * 0.04),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.calendar_today_rounded,
              size: 18,
            ),
          ),
          SizedBox(height: Scale.currentScreenHeight(context) * 0.04),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notes,
              size: 18,
            ),
          ),
          SizedBox(height: Scale.currentScreenHeight(context) * 0.04),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check_box_outlined,
              size: 18,
            ),
          ),
          SizedBox(height: Scale.currentScreenHeight(context) * 0.04),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              size: 18,
            ),
          ),
          SizedBox(height: Scale.currentScreenHeight(context) * 0.04),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
