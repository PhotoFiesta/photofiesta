import 'package:flutter/material.dart';

class AppTextInput extends StatelessWidget {
  const AppTextInput({
    super.key,
    required this.onChanged,
    this.focusNode,
  });

  /// Callback called every time the input text changes
  final void Function(String) onChanged;

  /// The focus node of the input
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        focusNode: focusNode,
        onChanged: onChanged,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
