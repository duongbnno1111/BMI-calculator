import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './gender_container.dart';
import './reuseable_card.dart';

const bottomContainerHeight = 60.0;

const colorTheme = {
  'inactiveColor': Color(0xFF101427),
  'calculatorButton': Color(0xFFFF0000),
  'activeColor': Color(0xFF1D1F33),
};

const genderIcon = {
  'male': Icon(
    FontAwesomeIcons.mars,
    size: 80,
  ),
  'female': Icon(
    FontAwesomeIcons.venus,
    size: 80,
  ),
};

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    child: ReuseableCard(
                      color: selectGender == Gender.male
                          ? colorTheme['activeColor']
                          : colorTheme['inactiveColor'],
                      cardChild: GenderContainer(
                        genderIcon: genderIcon['male'],
                        genderText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    child: ReuseableCard(
                      color: selectGender == Gender.female
                          ? colorTheme['activeColor']
                          : colorTheme['inactiveColor'],
                      cardChild: GenderContainer(
                        genderIcon: genderIcon['female'],
                        genderText: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              color: colorTheme['activeColor'],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    color: colorTheme['activeColor'],
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    color: colorTheme['activeColor'],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: colorTheme['calculatorButton'],
            width: double.infinity,
            height: bottomContainerHeight,
            child: FlatButton(
              child: Text('Calculate BMI'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
