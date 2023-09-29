import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ScreensController extends GetxController{

  var bnookCheckBoxValue = false.obs;
  final bnookEnglishNameController = TextEditingController();
  final bnookArabicNameController = TextEditingController();
  final bnookDescriptionController = TextEditingController();
  final bnookNumberController = TextEditingController();

  var elsadadCheckBoxValue = false.obs;
  final elsadadEnglishNameController = TextEditingController();
  final elsadadArabicNameController = TextEditingController();
  final elsadadDescriptionController = TextEditingController();
  final elsadadNumberController = TextEditingController();


  var sanadekActiveCheckBoxValue = false.obs;
  var sanadekMaxCheckBoxValue = false.obs;

  final sanadekArabicNameController = TextEditingController();
  final sanadekDescriptionController = TextEditingController();
  final sanadekEsmElomlaController = TextEditingController();
  final sanadekBranchController = TextEditingController();
  final sanadekRaseedEftetahiController = TextEditingController();
  final sanadekRaseedElhaliController = TextEditingController();
  final sanadekHavMaxController = TextEditingController();
  final sanadekMaxController = TextEditingController();
  final sanadekAccountNameController = TextEditingController();
  final sanadekActiveController = TextEditingController();


}