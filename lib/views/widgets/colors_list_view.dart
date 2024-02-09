import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 27,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 25,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 25,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffe36414),
    Color(0xffff9f1c),
    Color(0xff548c2f),
    Color(0xffffd449),
    Color(0xffe2c044),
    Color(0xffffd6ff),
    Color(0xffbbd0ff),
    Color(0xffe8dab2),
    Color(0xffeaeaea),
    Color(0xffc0d6df),
    Color(0xfff7a072),
    Color(0xff0fa3b1),
    Color(0xffb5e2fa),
    Color(0xff197278),
    Color(0xffeddea4),
    Color(0xff89b0ae),
    Color(0xff9b6a6c),
    Color(0xff9f86c0),
    Color(0xffc44536),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: ColorItem(
                    isActive: currentIndex == index ? true : false,
                    color: colors[index],
                  ),
                ));
          }),
    );
  }
}
