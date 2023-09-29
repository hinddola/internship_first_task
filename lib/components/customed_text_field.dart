import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/style.dart';

class CustomeTextField extends StatelessWidget {

  // double? height;
  // double? width;
  final TextEditingController? controller;
  final void Function(String)? onChange;
  final String Function(String?)? validator;
  //final bool? obSecure;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? type;

  CustomeTextField ({
    Key? key ,
    // required this.height,
    // required this.width,
    required this.controller,
    required this.validator,
    this.inputFormatters,
    //required this.obSecure,
    required this.onChange,
    required this.type
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height,
      // width: width,
      child: TextFormField(
        onChanged: onChange,
        validator: validator ,
        keyboardType: type,
        controller: controller,
        //obscureText: obSecure!,
        cursorColor: K.greyColor,
        //inputFormatters: inputFormatters,
        style: TextStyle(
            color: K.blackColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500
        ),
        maxLines: 1,
        decoration: const InputDecoration(
          // enabledBorder: OutlineInputBorder(
          //   // borderSide: BorderSide(
          //   //     color: Colors.black
          //   // ),
          // ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.indigoAccent
            ),
          ),
        ),
      ),

    );
  }
}
