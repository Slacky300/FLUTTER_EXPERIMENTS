import 'package:flutter/material.dart';

class Experiment4And5 extends StatelessWidget {
  final List<String> iconNames;

  const Experiment4And5({super.key, required this.iconNames});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 100),
        color: const Color(0xff45354c),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: iconNames.map((iconName) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      _getIconData(iconName),
                      size: 50,
                      color: Colors.white,
                    ),
                    Text(
                      _getLabelText(iconName),
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'person':
        return Icons.person;
      case 'thunder':
        return Icons.bolt;
      case 'book':
        return Icons.book;
      case 'car':
        return Icons.car_rental;
      case 'alarm':
        return Icons.alarm;
      default:
        return Icons.error; 
    }
  }

  String _getLabelText(String iconName) {
    switch (iconName) {
      case 'person':
        return 'Users';
      case 'thunder':
        return 'Thunder';
      case 'book':
        return 'Books';
      case 'car':
        return 'Cars';
      case 'alarm':
        return 'Alarm';
      default:
        return 'Unknown'; 
    }
  }
}
