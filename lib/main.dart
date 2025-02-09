import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Study to Container'),
      ),
      body: const Bodys(),
    ),
  ));
}

class Bodys extends StatelessWidget {
  const Bodys({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TestCheckBox(),
        TestRadioButton(),
        TestSlider(),
        TestSwitch(),
        TestPopupMenu(),
      ],
    );
  }
}

// 1. 체크박스
class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  late List<bool> values;

  @override
  void initState() {
    super.initState();
    values = [false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: values[0],
            onChanged: (value) => changeValue(0, value: value)),
        Checkbox(
            value: values[1],
            onChanged: (value) => changeValue(1, value: value)),
        Checkbox(
            value: values[2],
            onChanged: (value) => changeValue(2, value: value)),
      ],
    );
  }

  void changeValue(int index, {bool? value = false}) {
    setState(() {
      values[index] = value!;
    });
  }
}

// 2. 라디오 버튼
// 2.1. 라디오 버튼을 사용하기 위한 열거형 선언
// 2.2 라디오 버튼 확장을 위한 ListTile 위젯 사용
// onChanged 콜백 함수를 사용하여 라디오 버튼의 상태를 변경

class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

enum TestValue {
  test1,
  test2,
  test3;
}

class _TestRadioButtonState extends State<TestRadioButton> {
  TestValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<TestValue>(
            value: TestValue.test1,
            groupValue: selectValue,
            onChanged: (value) => setState(
              () {
                print(value);
                selectValue = value!;
              },
            ),
          ),
          title: Text('test1'),
          onTap: () => setState(
            () {
              if (selectValue != TestValue.test1) {
                selectValue = TestValue.test1;
              }
            },
          ),
        ),
        ListTile(
          leading: Radio<TestValue>(
            value: TestValue.test2,
            groupValue: selectValue,
            onChanged: (value) => setState(
              () {
                print(value);
                selectValue = value!;
              },
            ),
          ),
          title: Text('test2'),
          onTap: () => setState(
            () {
              if (selectValue != TestValue.test2) {
                selectValue = TestValue.test2;
              }
            },
          ),
        ),
        ListTile(
          leading: Radio<TestValue>(
            value: TestValue.test3,
            groupValue: selectValue,
            onChanged: (value) => setState(
              () {
                print(value);
                selectValue = value!;
              },
            ),
          ),
          title: Text('test3'),
          onTap: () => setState(
            () {
              if (selectValue != TestValue.test3) {
                selectValue = TestValue.test3;
              }
            },
          ),
        ),
      ],
    );
  }
}

// 3. 슬라이더
// 슬라이더는 사용자가 값을 선택할 수 있는 위젯이다.
// 슬라이더는 value와 onChanged 속성을 사용하여 값을 변경한다.
// value는 슬라이더의 현재 값이며, onChanged는 슬라이더의 값이 변경될 때 호출되는 콜백 함수이다.
// 슬라이더는 max, min, divisions, label, activeColor 속성을 사용하여 슬라이더의 모양을 변경할 수 있다.
class TestSlider extends StatefulWidget {
  const TestSlider({super.key});

  @override
  State<TestSlider> createState() => _TestSliderState();
}

class _TestSliderState extends State<TestSlider> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$value'),
        Slider(
          value: value,
          onChanged: (newValue) => setState(
            () {
              value = newValue;
            },
          ),
          divisions: 100,
          // 0~100까지 나누어진 슬라이더
          max: 100,
          // 최대값
          label: value.round().toString(),
          // 슬라이더 값에 라벨을 추가
          activeColor: Colors.greenAccent, // 활성화된 슬라이더 색상
        ),
      ],
    );
  }
}

// 4. 스위치
// 스위치는 체크박스와 비슷하지만, 스위치는 on/off 상태를 토글할 수 있는 스위치 버튼이다.
// 스위치는 value와 onChanged 속성을 사용하여 상태를 변경한다.
// value는 스위치의 상태를 나타내며, onChanged는 스위치의 상태가 변경될 때 호출되는 콜백 함수이다.
// 스위치는 value가 true일 때 켜진 상태이고, false일 때 꺼진 상태이다.

class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 스위치 위젯
        // Android 스타일 스위치
        Switch(
          value: value,
          onChanged: (newValue) => setState(() => value = newValue),
        ),
        // ios 스타일 스위치
        CupertinoSwitch(
            value: value,
            onChanged: (newValue) => setState(() => value = newValue)),
      ],
    );
  }
}

//5. 팝업메뉴
// 팝업 메뉴는 사용자가 선택할 수 있는 메뉴를 표시하는 위젯이다.
// 팝업 메뉴는 PopupMenuButton 위젯을 사용하여 구현한다.
// PopupMenuButton은 itemBuilder 속성을 사용하여 팝업 메뉴에 표시할 메뉴를 정의한다.
// itemBuilder는 List<PopupMenuEntry<T>>를 반환하는 콜백 함수이다.
// PopupMenuEntry는 팝업 메뉴에 표시할 메뉴 항목을 정의하는 추상 클래스이다.
// PopupMenuItem는 팝업 메뉴에 표시할 메뉴 항목을 정의하는 위젯이다.
// PopupMenuItem은 value 속성을 사용하여 메뉴 항목을 구분한다.
// onSelected 속성을 사용하여 메뉴 항목을 선택했을 때 호출되는 콜백 함수를 정의한다.
class TestPopupMenu extends StatefulWidget {
  const TestPopupMenu({super.key});

  @override
  State<TestPopupMenu> createState() => _TestPopupMenuState();
}

class _TestPopupMenuState extends State<TestPopupMenu> {
  TestValue selectValue = TestValue.test1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('선택된 팝업값: ${selectValue.name}'),
        PopupMenuButton(
          itemBuilder: (context) {
            return TestValue.values
                .map((value) =>
                    PopupMenuItem(value: value, child: Text(value.name)))
                .toList();
          },
          onSelected: (newValue) => setState(() => selectValue = newValue),
        ),
      ],
    );
  }
}
