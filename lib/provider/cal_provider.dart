import 'package:flutter/cupertino.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final compController = TextEditingController();

  setValue(String value) {
    String str = compController.text;

    switch (value) {
      case "C":
        compController.clear();
        break;
      case "AC":
        compController.text = str.substring(0, str.length - 1);
        break;
      case "X":
        compController.text += "*";
        break;
      case "=":
        computer();
        break;
      default:
        compController.text += value;
    }

    compController.selection = TextSelection.fromPosition(
        TextPosition(offset: compController.text.length));
  }

  @override
  void dispose() {
    super.dispose();
    compController.dispose();
  }

  computer() {
    String text = compController.text;
    compController.text = text.interpret().toString();
  }
}