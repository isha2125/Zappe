import 'package:get/get.dart';

class Controller extends GetxController {
  static Controller get to => Get.find();

  final Rx<DateTime> _selectedDate = DateTime.now().obs;

  DateTime get selectedDate => _selectedDate.value;

  set selectedDate(DateTime value) => _selectedDate.value = value;
}
