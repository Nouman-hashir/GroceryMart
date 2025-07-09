import 'package:flutter/material.dart';
import 'package:grocery_mart/feature/home/widgets/category_chip.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PulsesRow extends StatelessWidget {
  const PulsesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h, 
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          children: [
            CategoryCard(
              imagePath: 'assets/images/pulses.png',
              title: 'Pulses',
              backgroundColor: Colors.orange.shade100,
              onTap: () {},
            ),
            SizedBox(width: 12.w),
            CategoryCard(
              imagePath: 'assets/images/pulses2.png',
              title: 'Rice',
              backgroundColor: Colors.green.shade100,
              onTap: () {},
            ),
            SizedBox(width: 12.w),
            CategoryCard(
              imagePath: 'assets/images/item1.png',
              title: 'Fruits',
              backgroundColor: Colors.yellow.shade100,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
