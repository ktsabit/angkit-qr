import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Style {

    static final PinTheme pinTheme = PinTheme(
      borderRadius: BorderRadius.circular(5),
      fieldOuterPadding: EdgeInsets.zero,
      shape: PinCodeFieldShape.box,
      activeColor: Colors.grey.shade300,
      selectedColor: Colors.grey.shade300,
      inactiveColor: Colors.grey.shade300,
      disabledColor: Colors.grey.shade300,
      activeFillColor: Colors.grey.shade300,
      selectedFillColor: Colors.grey.shade300,
      inactiveFillColor: Colors.grey.shade300,
      errorBorderColor: Colors.grey.shade300,
    );

    static final TextStyle A1 = GoogleFonts.inter(
      textStyle: const TextStyle(
        color: Colors.black87,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );

    static final TextStyle A2 = GoogleFonts.inter(
      textStyle: const TextStyle(
        color: Colors.black54,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
    );

    static final TextStyle ACA2 = GoogleFonts.inter(
      textStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
    );

    static final TextStyle A2L = GoogleFonts.inter(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
    );

}