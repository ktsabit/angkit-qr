import 'package:angkit_customer/batch_controller.dart';
import 'package:angkit_customer/style.dart';
import 'package:angkit_customer/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CodeInput extends StatefulWidget {


  const CodeInput({super.key});

  @override
  State<CodeInput> createState() => _CodeInputState();
}

class _CodeInputState extends State<CodeInput> {
  BatchController batchController = Get.put(BatchController());
  TextEditingController idController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {




    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ID Ternak", style: Style.A1),
                Text("Masukkan ID yang terdapat pada ternak.", style: Style.A2),
                const SizedBox(height: 30),
                PinCodeTextField(
                  controller: idController,
                  validator: Utils.idValidator,
                  appContext: context,
                  length: 6,
                  animationType: AnimationType.slide,
                  cursorHeight: 0,
                  animationDuration: const Duration(milliseconds: 20),
                  pinTheme: Style.pinTheme,
                  enableActiveFill: true,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // controller.getBatch(idController.text);
                      batchController.scrollableController.value.animateTo(
                        1,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOutQuad,
                      );
                    }
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text("Selanjutnya", style: Style.ACA2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
