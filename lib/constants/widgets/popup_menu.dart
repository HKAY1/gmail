import 'package:flutter/material.dart';
import 'package:gmail/constants/colors.dart';

class CommonPopup extends StatefulWidget {
  final List<Widget> items;
  final Widget? icon;
  final String? tip;
  const CommonPopup({super.key, required this.items, this.icon, this.tip});

  @override
  State<CommonPopup> createState() => _CommonPopupState();
}

class _CommonPopupState extends State<CommonPopup> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: AppColors.white,
      tooltip: widget.tip,
      icon: widget.icon,
      itemBuilder: (context) => List.generate(widget.items.length,
          (index) => PopupMenuItem(child: widget.items[index])),
    );
  }
}
