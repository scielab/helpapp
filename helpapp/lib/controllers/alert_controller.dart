import 'package:flutter_sms/flutter_sms.dart';
import 'package:get/state_manager.dart';
import 'package:helpapp/models/contact.dart';

enum AlertState {
  ACTIVATE,
  DEACTIVATE
}

class AlertController extends GetxController {
  var alertState = AlertState.DEACTIVATE.obs();

  Future<void> sendsms(String message, Contact contact) async {
    try {
      var result = await sendSMS(message: message, recipients: ["56988834854"]);
      print(result);
    } catch (error) {
      print(error);
    }
  }
  void sendCall(Contact contact) {}

}