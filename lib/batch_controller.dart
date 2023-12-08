import 'dart:convert';

import 'package:angkit_customer/batch_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_scanner/mobile_scanner.dart';

class BatchController extends GetxController {

  Rx<DraggableScrollableController> scrollableController = DraggableScrollableController().obs;
  Rx<MobileScannerController> scannerController = MobileScannerController().obs;

  void dispose() {
    scrollableController.value.dispose();
    scannerController.value.dispose();
  }

  // RxString id = "".obs;
  Rx<BatchModel> batch =
      BatchModel.fromJson({"status": "Mohon lakukan scan/input ID"}).obs;

  Future<void> getBatch(String id) async {
    Uri url = Uri(
      scheme: 'http',
      host: '103.134.154.22',
      path: '/getBatch/$id',
    );
    var res = await http.post(url);

    if (res.statusCode != 200) {
      batch.value = BatchModel.fromJson({'status': 'Error saat request'});
    }

    Map<String, dynamic> jsonRes = jsonDecode(res.body);

    if (jsonRes['status'] != 'ok') {
      batch.value = BatchModel.fromJson({'status': 'ID tidak ditemukan'});
    } else {
      batch.value = BatchModel.fromJson(jsonRes);
    }
  }
}
