import 'package:calculator_demo/constant/colors.dart';
import 'package:calculator_demo/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false).setValue("="),
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(40)),
        child: const Center(
            child: Text(
              "=",
              style: TextStyle(fontSize: 32),
            )),
      ),
    );
  }
}
