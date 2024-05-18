import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'color_style.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({
    super.key,
    required double buttonProportion,
    required double marginSize,
    required String label,
    required bool isPrimary,
    required VoidCallback onPressedButton
    
    }): _buttonProportion = buttonProportion,_marginSize = marginSize,_label = label, _isPrimary = isPrimary,_onPressedButton = onPressedButton;

  final double _buttonProportion;
  final double _marginSize;
  final String _label;
  final bool _isPrimary;
  final VoidCallback _onPressedButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * _buttonProportion - _marginSize,
      height: 62,
      child: OutlinedButton(
        onPressed: _onPressedButton,
        style: OutlinedButton.styleFrom(
        backgroundColor: _isPrimary ? ColorStyle.primary : ColorStyle.secondary,
        side: const BorderSide(
          color: ColorStyle.primary,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
          )
        ),
        child: Text(
          _label,
          style: TextStyle(
             color: _isPrimary ? ColorStyle.primary : ColorStyle.secondary
          )
        ),
      ),
    );
  }
}