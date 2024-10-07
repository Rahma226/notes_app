import 'package:flutter/material.dart';
import 'package:notes_app/components/color_item.dart';
import 'package:notes_app/constant.dart';

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {

int currentIndex = 0;
List<Color> color = const [kcolor4 , Kcolor1 , Kcolor2 , Kcolor3 ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 18*2,
      child: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: color.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {
                });
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: color[index],
              ),
            ),
          );
        },
        ),
      ),
    );
  }
}