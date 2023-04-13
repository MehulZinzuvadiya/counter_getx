import 'package:counter_getx/Controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Getx Counter",
          style: GoogleFonts.lato(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
          child: Obx(
        () => Text(
          "${homeController.i}",
          style: GoogleFonts.lato(fontSize: 24, color: Colors.black),
        ),
      )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                homeController.i++;
              },
              child: Text(
                "+",
                style: GoogleFonts.lato(fontSize: 30),
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                homeController.i--;
              },
              child: Text(
                "-",
                style: GoogleFonts.lato(fontSize: 30),
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                homeController.i.value = (homeController.i * 2).toInt();
              },
              child: Text(
                "2x",
                style: GoogleFonts.lato(fontSize: 30),
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                homeController.i.value = (homeController.i * 3).toInt();
              },
              child: Text(
                "3x",
                style: GoogleFonts.lato(fontSize: 30),
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                homeController.i.value = (homeController.i * 4).toInt();
              },
              child: Text(
                "4x",
                style: GoogleFonts.lato(fontSize: 30),
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                homeController.i.value = (homeController.i * 6).toInt();
              },
              child: Text(
                "6x",
                style: GoogleFonts.lato(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
