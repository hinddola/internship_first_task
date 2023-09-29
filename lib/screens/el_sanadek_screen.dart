import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/customed_container.dart';
import '../components/customed_text_field.dart';
import '../consts/style.dart';
import '../controller/controller.dart';

class SanadekScreen extends StatelessWidget {
  SanadekScreen({Key? key}) : super(key: key);

  final controller = Get.put(ScreensController());

  int radioSelected = 1;
  String? radioValue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: K.backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'صناديق',
                style: TextStyle(
                    color: K.blueColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 28.sp
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: K.greyColor
                    ),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 40.h,
                          decoration : BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: K.greyColor
                            ),
                            gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  K.whiteColor,
                                  K.buttonColor
                                ]
                            ),
                          ),
                          child: MaterialButton(
                            onPressed: (){},
                            child: Text(
                              'جديد',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: K.blackColor
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children:  [
                                    Text(
                                      'Refresh',
                                      style: TextStyle(
                                          color: K.blackColor,
                                          fontSize: 16.sp
                                      ),
                                    ),
                                    Radio(
                                        value: 0 ,
                                        activeColor: K.blueColor,
                                        groupValue: radioSelected,
                                        onChanged: (value){
                                          radioSelected = value!;
                                          radioValue = 'Refresh';
                                        }
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [

                                  CustomedContainer(
                                    width: 70.w,
                                    height: 40.h,
                                    color: K.greyColor,
                                    child: const Text(
                                      'نشط',
                                      style: TextStyle(
                                          color: K.blackColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 70.w,
                                    height: 40.h,
                                    color: K.greyColor,
                                    child: const Text(
                                      'اسم الحساب',
                                      style: TextStyle(
                                          color: K.blackColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 100.w,
                                    height: 40.h,
                                    color: K.greyColor,
                                    child: const Text(
                                      ' الحد الأقصى',
                                      style: TextStyle(
                                          color: K.blackColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 120.w,
                                    height: 40.h,
                                    color: K.greyColor,
                                    child: const Text(
                                      'لديه حد اقصى',
                                      style: TextStyle(
                                          color: K.blackColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 65.w,
                                    height: 40.h,
                                    color: K.greyColor,
                                    child: const Text(
                                      'الرصيد الحالي',
                                      style: TextStyle(
                                          color: K.blackColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 65.w,
                                    height: 40.h,
                                    color: K.greyColor,
                                    child: const Text(
                                      'الرصيد الافتتاحي',
                                      style: TextStyle(
                                          color: K.blackColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 65.w,
                                    height: 40.h,
                                    color: K.greyColor,
                                    child: const Text(
                                      'الفرع',
                                      style: TextStyle(
                                          color: K.blackColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 65.w,
                                    height: 40.h,
                                    color: K.greyColor,
                                    child: const Text(
                                      'اسم العملة',
                                      style: TextStyle(
                                          color: K.blackColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 65.w,
                                    height: 40.h,
                                    color: K.greyColor,
                                    child: const Text(
                                      'الوصف',
                                      style: TextStyle(
                                          color: K.blackColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 65.w,
                                    height: 40.h,
                                    color: K.greyColor,
                                    child: const Text(
                                      'الاسم العربي',
                                      style: TextStyle(
                                          color: K.blackColor,
                                          fontWeight: FontWeight.bold
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CustomedContainer(
                                    width: 70.w,
                                    height: 40.h,
                                    color: K.blackColor,
                                    child: Checkbox(
                                        value: controller.sanadekActiveCheckBoxValue.value,
                                        activeColor: K.blueColor  ,
                                        onChanged:(newValue){
                                          //controller.checkBoxValue.value = newValue!;
                                        }
                                    ),
                                  ),
                                  CustomedContainer(
                                      width: 70.w,
                                      height: 40.h,
                                      color: K.blackColor,
                                      child: CustomeTextField(
                                        controller: controller.sanadekAccountNameController,
                                        validator: (value ) {
                                          if(value == null || value.isEmpty){
                                            return 'please enter the description';
                                          }
                                          return '';
                                        },
                                        onChange: (value ) {
                                          print(value);
                                        },
                                        type: TextInputType.text,
                                        // width: 50.w,
                                        // height: 30.h,
                                      )
                                  ),
                                  CustomedContainer(
                                      width: 100.w,
                                      height: 40.h,
                                      color: K.blackColor,
                                      child: CustomeTextField(
                                        controller: controller.sanadekMaxController,
                                        validator: (value ) {
                                          if(value == null || value.isEmpty){
                                            return 'please enter the description';
                                          }
                                          return '';
                                        },
                                        onChange: (value ) {
                                          print(value);
                                        },
                                        type: TextInputType.text,
                                        // width: 30.w,
                                        // height: 30.h,
                                      )
                                  ),
                                  CustomedContainer(
                                      width: 120.w,
                                      height: 40.h,
                                      color: K.blackColor,
                                      child:Checkbox(
                                          value: controller.sanadekMaxCheckBoxValue.value,
                                          activeColor: K.blueColor  ,
                                          onChanged:(newValue){
                                            //controller.checkBoxValue.value = newValue!;
                                          }
                                      ),
                                  ),
                                  CustomedContainer(
                                    width: 65.w,
                                    height: 40.h,
                                    color: K.blackColor,
                                    child:  CustomeTextField(
                                      controller: controller.sanadekRaseedElhaliController,
                                      validator: (value ) {
                                        if(value == null || value.isEmpty){
                                          return 'please enter the description';
                                        }
                                        return '';
                                      },
                                      onChange: (value ) {
                                        print(value);
                                      },
                                      type: TextInputType.number,
                                      // width: 30.w,
                                      // height: 30.h,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 65.w,
                                    height: 40.h,
                                    color: K.blackColor,
                                    child:  CustomeTextField(
                                      controller: controller.sanadekRaseedEftetahiController,
                                      validator: (value ) {
                                        if(value == null || value.isEmpty){
                                          return 'please enter the description';
                                        }
                                        return '';
                                      },
                                      onChange: (value ) {
                                        print(value);
                                      },
                                      type: TextInputType.number,
                                      // width: 30.w,
                                      // height: 30.h,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 65.w,
                                    height: 40.h,
                                    color: K.blackColor,
                                    child:  CustomeTextField(
                                      controller: controller.sanadekBranchController,
                                      validator: (value ) {
                                        if(value == null || value.isEmpty){
                                          return 'please enter the description';
                                        }
                                        return '';
                                      },
                                      onChange: (value ) {
                                        print(value);
                                      },
                                      type: TextInputType.text,
                                      // width: 30.w,
                                      // height: 30.h,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 65.w,
                                    height: 40.h,
                                    color: K.blackColor,
                                    child:  CustomeTextField(
                                      controller: controller.sanadekEsmElomlaController,
                                      validator: (value ) {
                                        if(value == null || value.isEmpty){
                                          return 'please enter the description';
                                        }
                                        return '';
                                      },
                                      onChange: (value ) {
                                        print(value);
                                      },
                                      type: TextInputType.text,
                                      // width: 30.w,
                                      // height: 30.h,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 65.w,
                                    height: 40.h,
                                    color: K.blackColor,
                                    child:  CustomeTextField(
                                      controller: controller.sanadekDescriptionController,
                                      validator: (value ) {
                                        if(value == null || value.isEmpty){
                                          return 'please enter the description';
                                        }
                                        return '';
                                      },
                                      onChange: (value ) {
                                        print(value);
                                      },
                                      type: TextInputType.text,
                                      // width: 30.w,
                                      // height: 30.h,
                                    ),
                                  ),
                                  CustomedContainer(
                                    width: 65.w,
                                    height: 40.h,
                                    color: K.blackColor,
                                    child:  CustomeTextField(
                                      controller: controller.sanadekArabicNameController,
                                      validator: (value ) {
                                        if(value == null || value.isEmpty){
                                          return 'please enter the description';
                                        }
                                        return '';
                                      },
                                      onChange: (value ) {
                                        print(value);
                                      },
                                      type: TextInputType.text,
                                      // width: 30.w,
                                      // height: 30.h,
                                    ),
                                  ),

                                ],
                              ),
                              Container(
                                color: Colors.blueGrey[100],
                                child: Row(
                                  children: [
                                    CustomedContainer(
                                      width: 70.w,
                                      height: 40.h,
                                      color: K.backgroundColor,
                                      child: Obx(() => Checkbox(
                                          value: controller.sanadekActiveCheckBoxValue.value,
                                          activeColor: K.blueColor  ,
                                          onChanged:(newValue){
                                            controller.sanadekActiveCheckBoxValue.value = newValue!;
                                          }
                                      ),
                                      ),
                                    ),
                                    CustomedContainer(
                                      width: 70.w,
                                      height: 40.h,
                                      color: K.backgroundColor,
                                      child: Text(
                                        '${controller.sanadekAccountNameController.text}',
                                        style: const TextStyle(
                                          color: K.blackColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    CustomedContainer(
                                      width: 100.w,
                                      height: 40.h,
                                      color: K.backgroundColor,
                                      child: Text(
                                        '${controller.sanadekMaxController.text}',
                                        style: const TextStyle(
                                          color: K.blackColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    CustomedContainer(
                                      width: 70.w,
                                      height: 40.h,
                                      color: K.backgroundColor,
                                      child: Obx(() => Checkbox(
                                          value: controller.sanadekMaxCheckBoxValue.value,
                                          activeColor: K.blueColor  ,
                                          onChanged:(newValue){
                                            controller.sanadekMaxCheckBoxValue.value = newValue!;
                                          }
                                      ),
                                      ),
                                    ),
                                    CustomedContainer(
                                      width: 120.w,
                                      height: 40.h,
                                      color: K.backgroundColor,
                                      child:  Text(
                                        '${controller.sanadekRaseedElhaliController.text}',
                                        style: const TextStyle(
                                          color: K.blackColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    CustomedContainer(
                                      width: 65.w,
                                      height: 40.h,
                                      color: K.backgroundColor,
                                      child:  Text(
                                        '${controller.sanadekRaseedEftetahiController.text}',
                                        style: const TextStyle(
                                          color: K.blackColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    CustomedContainer(
                                      width: 65.w,
                                      height: 40.h,
                                      color: K.backgroundColor,
                                      child:  Text(
                                        '${controller.sanadekBranchController.text}',
                                        style: const TextStyle(
                                          color: K.blackColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    CustomedContainer(
                                      width: 65.w,
                                      height: 40.h,
                                      color: K.backgroundColor,
                                      child:  Text(
                                        '${controller.sanadekEsmElomlaController.text}',
                                        style: const TextStyle(
                                          color: K.blackColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    CustomedContainer(
                                      width: 65.w,
                                      height: 40.h,
                                      color: K.backgroundColor,
                                      child:  Text(
                                        '${controller.sanadekDescriptionController.text}',
                                        style: const TextStyle(
                                          color: K.blackColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    CustomedContainer(
                                      width: 65.w,
                                      height: 40.h,
                                      color: K.backgroundColor,
                                      child:  Text(
                                        '${controller.sanadekArabicNameController.text}',
                                        style: const TextStyle(
                                          color: K.blackColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}