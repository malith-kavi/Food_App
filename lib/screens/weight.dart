import 'package:first/screens/height.dart';
import 'package:first/screens/meal_plan.dart';
import 'package:first/widgets/gray_bar.dart';
import 'package:first/widgets/number_picker_weight.dart';
import 'package:first/widgets/weight_button.dart';
import 'package:flutter/material.dart';
import 'package:first/widgets/custom_button.dart';

var weight = 'assets/images/weight.png';

class Weight extends StatelessWidget {
  const Weight({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Height(),
              ),
            );
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(17, 60, 0, 0),
                      ),
                      Center(
                        child: Text(
                          'Enter Your Weight',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ]),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    7,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: GrayBar(
                        isBlue: index == 0 ||
                            index == 1 ||
                            index == 2 ||
                            index == 3,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset(
                  weight,
                  width: 320,
                  height: 260,
                ),
                const SizedBox(height: 20),
                const WeightButton(),
                const SizedBox(height: 50),
                HorizontalNumberPicker(),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: CustomButton(
                    text: 'Continue',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MealPlan()),
                      );
                    },
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}