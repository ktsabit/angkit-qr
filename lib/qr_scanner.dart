import 'dart:typed_data';
import 'package:angkit_customer/batch_controller.dart';
import 'package:angkit_customer/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  BatchController batchController = Get.put(BatchController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MobileScanner(
        controller: batchController.scannerController.value,
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          final Uint8List? image = capture.image;
          for (final barcode in barcodes) {
            if (Utils.idValidator(barcode.rawValue) == null) {
              // batchController.getBatch(barcode.rawValue!);
              batchController.scrollableController.value.animateTo(
                1,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOutQuad,
              );

              batchController.scrollableController.value.addListener(() { });

              batchController.scannerController.value.stop();
            }
            debugPrint('Barcode found! ${barcode.rawValue}');
          }
        },
      ),
    );
  }
}
