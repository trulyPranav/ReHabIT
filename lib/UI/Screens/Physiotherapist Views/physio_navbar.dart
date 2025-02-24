import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Screens/Physiotherapist%20Views/Home%20Screen/physiotherapist_home_screen.dart';

class PhysioNavbar extends StatelessWidget {
  final String userName;
  const PhysioNavbar({required this.userName, super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PhysioNavController(userName));
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 60,
          elevation: 0,
          backgroundColor: primaryBackground,
          indicatorColor: Colors.transparent,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(
              icon: Image.asset("assets/homeInactive.png"),
              label: "",
              selectedIcon: Image.asset("assets/homeActive.png"),
            ),
            NavigationDestination(
              icon: Image.asset("assets/secondIconNav.png"),
              label: "",
            ),
            NavigationDestination(
              icon: Image.asset("assets/calendarInactive.png"),
              label: "",
              selectedIcon: Image.asset("assets/calendarActive.png"),
            ),
            NavigationDestination(
              icon: Image.asset("assets/settingsIconNav.png"),
              label: "",
            )
          ]
        )
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class PhysioNavController extends GetxController {
  late final String userName;
  PhysioNavController(this.userName);
  final Rx<int> selectedIndex = 0.obs;
  List<Widget> get screens => [
    PhysiotherapistHomeScreen(name: userName),
    Container(color: Colors.amberAccent),
    Container(color: Colors.blueAccent),
    Container(color: Colors.redAccent)
  ];
}