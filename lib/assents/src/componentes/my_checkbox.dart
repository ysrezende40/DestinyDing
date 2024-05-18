import 'package:flutter/material.dart';

class MyCheckbox extends StatelessWidget {
  const MyCheckbox({
    Key? key,
    required this.isChecked,
    required this.onChanged,
    required this.label,
    required this.checkboxColor,
    required this.labelColor,
  }) : super(key: key);

  final bool isChecked;
  final ValueChanged<bool?> onChanged;
  final String label;
  final Color checkboxColor;
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
          fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return checkboxColor; // Color when checkbox is selected
              }
              return Colors.grey; // Color when checkbox is not selected
            },
          ),
        ),
        Text(
          label,
          style: TextStyle(color: labelColor),
        ),
      ],
    );
  }
}
