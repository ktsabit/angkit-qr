
import 'package:angkit_customer/batch_controller.dart';
import 'package:angkit_customer/style.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:toggle_switch/toggle_switch.dart';

typedef ToggleCallback = void Function(int index);

class DetailSheet extends StatefulWidget {
  const DetailSheet({
    super.key,
    required this.onToggle,
    required this.pageIndex,
  });

  final ToggleCallback onToggle;
  final int pageIndex;

  @override
  State<DetailSheet> createState() => _DetailSheetState();
}

class _DetailSheetState extends State<DetailSheet> {

  BatchController batchController = Get.put(BatchController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DraggableScrollableSheet(
            expand: false,
            snap: true,
            snapSizes: const [0.3, 1],
            maxChildSize: 1,
            minChildSize: 0.3,
            initialChildSize: 0.3,
            controller: batchController.scrollableController.value,
            builder: (ctx, scroll) {
              return SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                controller: scroll,
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    Image.asset('assets/logo.png', width: 100),
                    const SizedBox(height: 20),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffdedede),
                      ),
                      padding: const EdgeInsets.all(5),
                      child: ToggleSwitch(
                        cornerRadius: 10.0,
                        minWidth: double.infinity * 7 / 8,
                        activeBgColors: const [
                          [Colors.white],
                          [Colors.white]
                        ],
                        activeFgColor: Colors.black,
                        inactiveBgColor: const Color(0xffdedede),
                        inactiveFgColor: Colors.black,
                        initialLabelIndex: widget.pageIndex,
                        totalSwitches: 2,
                        customTextStyles: [Style.A2L, Style.A2L],
                        labels: const ['Pindai QR', 'Input ID'],
                        radiusStyle: true,
                        onToggle: (index) {
                          widget.onToggle(index!);
                        },
                      ),
                    ),
                    (batchController.batch.value.status == "ok")
                        ? Container()
                        : Container(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
