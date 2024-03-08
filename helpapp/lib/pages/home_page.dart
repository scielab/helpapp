import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helpapp/controllers/alert_controller.dart';
import 'package:helpapp/models/contact.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AlertController alertController = Get.find<AlertController>();
    return Scaffold(
      body: Column(
        children: [
          const Text("Home"),
          ElevatedButton(onPressed: () {
            Contact contact = const Contact(name: "Matias", phone: "988834854");
            alertController.sendsms("Ayuda", contact);
          }, 
          child: Text("Alerta"))
        ],
      ),
    );
  }
}