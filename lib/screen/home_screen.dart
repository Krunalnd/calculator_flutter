import 'package:calculator_demo/constant/colors.dart';
import 'package:calculator_demo/provider/cal_provider.dart';
import 'package:calculator_demo/screen/widgets_data.dart';
import 'package:calculator_demo/widgets/button.dart';
import 'package:calculator_demo/widgets/cal_button.dart';
import 'package:calculator_demo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .sizeOf(context)
        .height;
    final padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    final decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)));

    return Consumer<CalculatorProvider>(
      builder: (context, provider,_) {
        return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
                backgroundColor: Colors.black,
                title: const Center(
                    child: Text(
                      "Calculator App",
                      style: TextStyle(color: Colors.white),
                    ))),
            body: Column(
              children: [
                CustomTextField(controller: provider.compController,),
                const Spacer(),
                Container(
                  height: screenHeight * 0.6,
                  width: double.infinity,
                  padding: padding,
                  decoration: decoration,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(4, (index) => buttonList[index]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                        List.generate(4, (index) => buttonList[index + 4]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                        List.generate(4, (index) => buttonList[index + 8]),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      3, (index) => buttonList[index + 12]),
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                      3, (index) => buttonList[index + 15]),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const CalculatorButton()
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ));
      }
    );
  }
}

