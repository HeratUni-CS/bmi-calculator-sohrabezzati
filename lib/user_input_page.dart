import 'package:bmi_starting/reuseable_continer.dart';
import 'package:bmi_starting/reuseable_text.dart';
import 'package:bmi_starting/rounded_icon_button.dart';
import 'package:bmi_starting/styled_number_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

enum Genders { male, female }

Genders? selectedGender;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double value = 150;
  int weight = 10;
  int age = 13;
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
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          color: selectedGender == Genders.male
                              ? Colors.red
                              : Colors.transparent),
                      child: IconContent(
                        setGener: () {
                          selectGender('male');
                        },
                        icon: FontAwesomeIcons.mars,
                        lebel: 'MALE',
                      ),
                    )),
                  ),
                  Expanded(
                      child: ReuseableContiner(
                          child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: selectedGender == Genders.female
                            ? Colors.red
                            : Colors.transparent),
                    child: IconContent(
                      setGener: () {
                        selectGender('female');
                      },
                      icon: FontAwesomeIcons.venus,
                      lebel: 'FEMALE',
                    ),
                  )))
                ],
              ),
            ),
            Expanded(
              child: ReuseableContiner(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReuseableText(text: 'HEIGHT'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        StyledNumberText(text: value.round().toString()),
                        Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData().copyWith(
                        trackHeight: 0.5,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                          min: 100,
                          max: 220,
                          value: value,
                          activeColor: Colors.red.shade400,
                          inactiveColor: Colors.white30,
                          onChanged: (neWvalue) {
                            debugPrint(neWvalue.toString());
                            setState(() {
                              value = neWvalue;
                            });
                          }),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ReuseableContiner(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ReuseableText(text: 'WEIGHT'),
                        SizedBox(
                          height: 8,
                        ),
                        StyledNumberText(text: weight.toString()),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  weightDown();
                                },
                                backgroundColor: Colors.white24,
                                iconColor: Colors.white),
                            SizedBox(
                              width: 16,
                            ),
                            RoundedIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  weightUp();
                                },
                                backgroundColor: Colors.white24,
                                iconColor: Colors.white)
                          ],
                        )
                      ],
                    )),
                  ),
                  Expanded(
                    child: ReuseableContiner(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ReuseableText(text: 'AGE'),
                        SizedBox(
                          height: 8,
                        ),
                        StyledNumberText(text: age.toString()),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  ageDown();
                                },
                                backgroundColor: Colors.white24,
                                iconColor: Colors.white),
                            SizedBox(
                              width: 16,
                            ),
                            RoundedIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  ageUp();
                                },
                                backgroundColor: Colors.white24,
                                iconColor: Colors.white)
                          ],
                        )
                      ],
                    )),
                  )
                ],
              ),
            ),
            Container(
              height: 64,
              width: double.maxFinite,
              decoration: BoxDecoration(color: Colors.red.shade400),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 26,
                        fontWeight: FontWeight.w900),
                  )),
            )
          ],
        ));
  }

  void selectGender(String gender) {
    setState(() {
      if (gender == 'male') {
        selectedGender = Genders.male;
        debugPrint('selected gender:  $selectedGender');
      } else {
        selectedGender = Genders.female;
        debugPrint('selected gender:  $selectedGender');
      }
    });
  }

  void ageUp() {
    setState(() {
      age++;
    });
  }

  void ageDown() {
    setState(() {
      age--;
    });
  }

  void weightUp() {
    setState(() {
      weight++;
    });
  }

  void weightDown() {
    setState(() {
      weight--;
    });
  }
}
