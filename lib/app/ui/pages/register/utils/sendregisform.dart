import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import '../../../../domain/response/singuprespons.dart';
import '../../../globalwidgets/dialogs/dialogs.dart';
import '../../../globalwidgets/dialogs/progress.dart';
import '../../../routes/routes.dart';
import '../registerpages.dart' show registerprovider;

Future<void> SendRegisForm(BuildContext context) async {
  final controler = registerprovider.read;
  final isValidForm = controler.formKey.currentState!.validate();

  if (isValidForm) {
    ProgressDialog.show(context);
    final response = await controler.submit();
    router.pop();
    if (response.error != null) {
      late String content = "";
      switch (response.error) {
      }

      // ignore: use_build_context_synchronously
      Dialogs.alert(
        context,
        title: "ERROR",
        content: content,
      );
    } else {
      router.pushNamedAndRemoveUntil(
        Routes.LOGIN,
      );
      response.user;
    }
  } else {
    Dialogs.alert(context,
        title: "ERROR", content: "Complete los campos faltantes");
  }
}
