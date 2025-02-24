import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhysioNavbar extends StatelessWidget {
  const PhysioNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PhysioNavController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [

          ]
        )
      ),
    );
  }
}

class PhysioNavController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [

  ];
}