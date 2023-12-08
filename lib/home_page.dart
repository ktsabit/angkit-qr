import 'package:angkit_customer/bottom_sheet.dart';
import 'package:angkit_customer/id_input.dart';
import 'package:angkit_customer/qr_scanner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'batch_controller.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  {

  BatchController batchController = Get.put(BatchController());
  int pageIndex = 0;

  @override
  void dispose() {
    batchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (notification) {
        if (notification.extent > 0.9) {
          batchController.scannerController.value.stop();
        } else {
          batchController.scannerController.value.start();
        }

        return true;

      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Cari ternak"),

        ),
        body: IndexedStack(
          index: pageIndex,
          children: const [
             Scanner(),
             CodeInput(),
          ],
        ),
        bottomSheet: DetailSheet(
          pageIndex: pageIndex,
          onToggle: (val) {
            setState(() {
              pageIndex=val;
            });
          },
        )
      ),
    );
  }
}
