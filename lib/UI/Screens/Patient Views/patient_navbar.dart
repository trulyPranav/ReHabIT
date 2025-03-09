import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rehabit/UI/Constants/constants.dart';
import 'package:rehabit/UI/Screens/Patient%20Views/Home%20Screen/patient_home_screen.dart';
import 'package:rehabit/UI/Screens/Patient%20Views/Patient%20Detailed%20Screen/patient_detailed_screen.dart';

class PatientNavbar extends StatelessWidget {
  final String userName;
  const PatientNavbar({required this.userName, super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PatientNavController(userName: userName));
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

class PatientNavController extends GetxController {
  final String userName;
    PatientNavController({required this.userName});
  final Rx<int> selectedIndex = 0.obs;
  List<Widget> get screens => [
    PatientHomeScreen(name: userName),
    Container(color: primaryBackground),
    PatientDetailedScreen(userName: userName),
    Container(color: primaryBackground)
  ];
}