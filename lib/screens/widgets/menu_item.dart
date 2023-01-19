import 'package:flutter/material.dart';
import 'package:web_capstone_project/constants/style.dart';

class MyMenuItem extends StatefulWidget {
  IconData icon;
  String text;
  MyMenuItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  State<MyMenuItem> createState() => _MyMenuItemState();
}

class _MyMenuItemState extends State<MyMenuItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? backgroundGreen : Colors.transparent,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    widget.icon,
                    color: isSelected ? greenAccent : grayAccent,
                    size: 20,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 9,
                  child: Text(
                    widget.text,
                    style:
                        TextStyle(color: isSelected ? greenAccent : grayAccent),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        isSelected = true;
        setState(() {});
      },
    );
  }
}
