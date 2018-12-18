import 'package:flutter/material.dart';
import 'package:listview_of_custom_btn/customcontrol/category_weight.dart';

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'alarm',
    'cake',
    'print',
    'portrait',
    'accessibility',
    'adb',
    'add_to_photos',
  ];

  static const _baseIcons = <IconData>[
    Icons.alarm,
    Icons.cake,
    Icons.print,
    Icons.portrait,
    Icons.accessibility,
    Icons.adb,
    Icons.add_to_photos
  ];

  _buildCategoryWidgets(List<Widget> categories, bool portrait) {
    ///横竖屏切换不同布局
    if (portrait) {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) => categories[index],
        itemCount: categories.length,
      );
    } else {
      return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3.0,
        children: categories,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    bool portrait;
    final categories = <Category>[];

    ///横竖屏判断
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      portrait = true;
    } else {
      portrait = false;
    }

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(
        name: _categoryNames[i],
        iconLocation: _baseIcons[i],
      ));
    }

    final view = Container(
      color: Colors.white,
      child: _buildCategoryWidgets(categories, portrait),
    );

    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Unit Converter',
      ),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );

    return Scaffold(
      appBar: appBar,
      body: view,
    );
  }
}
