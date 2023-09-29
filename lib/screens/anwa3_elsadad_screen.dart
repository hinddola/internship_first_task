import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/customed_container.dart';
import '../components/customed_text_field.dart';
import '../consts/style.dart';
import '../controller/controller.dart';

class ElSadadScreen extends StatelessWidget {
  ElSadadScreen({Key? key}) : super(key: key);

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
                'أنواع السداد',
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
                                      'الوصف',
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
                                      'الاسم العربي',
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
                                      'الاسم الانجليزي',
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
                                      'الرقم',
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
                                        value: controller.elsadadCheckBoxValue.value,
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
                                        controller: controller.elsadadDescriptionController,
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
                                        controller: controller.elsadadArabicNameController,
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
                                      child: CustomeTextField(
                                        controller: controller.elsadadEnglishNameController,
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
                                    width: 65.w,
                                    height: 40.h,
                                    color: K.blackColor,
                                    child:  CustomeTextField(
                                      controller: controller.elsadadNumberController,
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
                                          value: controller.elsadadCheckBoxValue.value,
                                          activeColor: K.blueColor  ,
                                          onChanged:(newValue){
                                            controller.elsadadCheckBoxValue.value = newValue!;
                                          }
                                      ),
                                      ),
                                    ),
                                    CustomedContainer(
                                      width: 70.w,
                                      height: 40.h,
                                      color: K.backgroundColor,
                                      child: Text(
                                        '${controller.elsadadDescriptionController.text}',
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
                                        '${controller.elsadadArabicNameController.text}',
                                        style: const TextStyle(
                                          color: K.blackColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    CustomedContainer(
                                      width: 120.w,
                                      height: 40.h,
                                      color: K.backgroundColor,
                                      child:  Text(
                                        '${controller.elsadadEnglishNameController.text}',
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
                                        '${controller.elsadadNumberController.text}',
                                        style: const TextStyle(
                                          color: K.blackColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              )

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