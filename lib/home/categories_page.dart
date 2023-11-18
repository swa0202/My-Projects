
import 'package:restaurant_app/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/home/category_menu.dart';


class Categories extends StatefulWidget {
  const Categories({
    Key? key,
    required this.onChanged,
    required this.selectedIndex,
  }) : super(key: key);

  final ValueChanged<int> onChanged;
  final int selectedIndex ;

  @override
  State<StatefulWidget> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            demoCategoryMenus.length,
                (index) => Padding(
                    padding: EdgeInsets.only(left: 8),
                  child: TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      primary: widget.selectedIndex == index
                          ?Colors.black : Colors.black45),
                    child: Text(
                      demoCategoryMenus[index].category,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ))

      ),

    );
  }
}
