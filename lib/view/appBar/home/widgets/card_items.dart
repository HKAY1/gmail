// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gmail/utilities/responsive.dart';

import '../../../../constants/colors.dart';
import '../../../../theme/theme.dart';
import '../../../../utilities/scale.dart';

class CardItems extends StatefulWidget {
  int? selectedItem;
  CardItems({super.key, this.selectedItem});

  @override
  State<CardItems> createState() => _CardItemsState();
}

class _CardItemsState extends State<CardItems> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 7,
        shrinkWrap: true,
        itemBuilder: (_, i) {
          return InkWell(
            onHover: (value) {
              if (value && widget.selectedItem == null) {
                widget.selectedItem = i;
                setState(() {});
              } else {
                widget.selectedItem = null;
                setState(() {});
              }
            },
            onTap: () {},
            child: Card(
              color: AppColors.lightGrey,
              elevation: (widget.selectedItem == i) ? 3 : 0,
              shape: (widget.selectedItem == i)
                  ? Border.all(color: AppColors.black, width: 0.2)
                  : null,
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: Scale.currentScreenWidth(context) * 0.01,
                        ),
                        const Checkbox(value: false, onChanged: null),
                        SizedBox(
                          width: Scale.currentScreenWidth(context) * 0.01,
                        ),
                        const IconButton(
                            onPressed: null,
                            icon: Icon(Icons.star_border_outlined)),
                        SizedBox(
                          width: Scale.currentScreenWidth(context) * 0.01,
                        ),
                        const Text(
                          "Harsh Kumar",
                          style: AppTheme.bodyText2,
                        )
                      ],
                    ),
                    SizedBox(
                      width: Scale.currentScreenWidth(context) * 0.05,
                    ),
                    const Text(
                      "Some Mail for you",
                      style: AppTheme.bodyText1,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        SizedBox(
                          width: Scale.currentScreenWidth(context) * 0.01,
                        ),
                        if (widget.selectedItem != i) const Text("Mar 31"),
                        SizedBox(
                          width: Scale.currentScreenWidth(context) * 0.01,
                        ),
                        if (widget.selectedItem == i)
                          const IconButton(
                              onPressed: null,
                              tooltip: "Archive",
                              icon: Icon(Icons.archive)),
                        if (widget.selectedItem == i)
                          SizedBox(
                            width: Scale.currentScreenWidth(context) * 0.01,
                          ),
                        if (widget.selectedItem == i)
                          const IconButton(
                              onPressed: null,
                              tooltip: "Delete",
                              icon: Icon(Icons.delete)),
                        if (widget.selectedItem == i)
                          SizedBox(
                            width: Scale.currentScreenWidth(context) * 0.01,
                          ),
                        if (widget.selectedItem == i &&
                                Responsiveness.isLargeScreen(context) ||
                            Responsiveness.isXlLargeScreen(context))
                          const IconButton(
                              onPressed: null,
                              tooltip: "Mark as unread",
                              icon: Icon(Icons.mark_email_unread_rounded)),
                        if (widget.selectedItem == i &&
                                Responsiveness.isLargeScreen(context) ||
                            Responsiveness.isXlLargeScreen(context))
                          SizedBox(
                            width: Scale.currentScreenWidth(context) * 0.01,
                          ),
                        if (widget.selectedItem == i &&
                                Responsiveness.isLargeScreen(context) ||
                            Responsiveness.isXlLargeScreen(context))
                          const IconButton(
                              onPressed: null,
                              tooltip: "Snooze",
                              icon: Icon(Icons.snooze_sharp)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
