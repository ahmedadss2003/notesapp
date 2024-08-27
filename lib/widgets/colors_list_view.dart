
import 'package:flutter/material.dart';

class ContainerColor extends StatelessWidget {
  const ContainerColor({super.key, required this.color, required this.isSelected});
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: CircleAvatar(
        radius: isSelected ? 40 : 35, // Increase size if selected
        backgroundColor: color,
        child: isSelected
            ? Icon(Icons.check, color: Colors.white) // Optional check icon for selection
            : null,
      ),
    );
  }
}

final List<Color> colorsList = [
  Color(0xff383F51),
  Color(0xffDDDBF1),
  Color(0xff3C4F76),
  Color(0xffD1BEB0),
  Color(0xffAB9F9D),
];

class ColorListForBicker extends StatefulWidget {
  const ColorListForBicker({super.key});

  @override
  _ColorListForBickerState createState() => _ColorListForBickerState();
}

class _ColorListForBickerState extends State<ColorListForBicker> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index; // Update the selected index
              });
            },
            child: ContainerColor(
              color: colorsList[index],
              isSelected: selectedIndex == index, // Check if this item is selected
            ),
          );
        },
      ),
    );
  }
}
