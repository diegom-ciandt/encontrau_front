import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({
    Key? key,
    required this.icons,
    required this.onItemSelected,
  }) : super(key: key);

  final List<IconData> icons;
  final ValueChanged<int> onItemSelected;

  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _selectedIndex = 0;

  void _updateIndex(int index) {
    widget.onItemSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getAppItem(int index, IconData icon) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => _updateIndex(index),
            child: Icon(
              icon,
              size: 24,
              // color: _selectedIndex == index
              //     ? MVTheme.darkGray
              //     : MVTheme.lightGrayDark,
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _getAppItems() {
    return List.generate(widget.icons.length, (int index) {
      IconData icon = widget.icons[index];
      return _getAppItem(index, icon);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _getAppItems(),
      ),
    );
  }
}
