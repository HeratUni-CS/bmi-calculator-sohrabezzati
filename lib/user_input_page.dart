import 'package:bmi_starting/reuseable_continer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ReuseableContiner(
                        child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      lebel: 'Male',
                    )),
                  ),
                  Expanded(
                      child: ReuseableContiner(
                          child: IconContent(
                    icon: FontAwesomeIcons.venus,
                    lebel: 'FEMALE',
                  )))
                ],
              ),
            ),
            Expanded(
              child: ReuseableContiner(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("125"), Text("cm")],
                    ),
                    Slider(value: 0.5, onChanged: (value) {})
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: Colors.amber),
                      child: IconContent(
                        icon: FontAwesomeIcons.mars,
                        lebel: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableContiner(
                      child: IconContent(
                        icon: FontAwesomeIcons.venus,
                        lebel: 'FEMALE',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 64,
              width: double.maxFinite,
              decoration: BoxDecoration(color: Colors.orangeAccent),
              child: TextButton(onPressed: () {}, child: Text('CALCULATE')),
            )
          ],
        ));
  }
}
