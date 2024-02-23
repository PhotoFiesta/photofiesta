import 'package:flutter/material.dart';

class AppTextInput extends StatelessWidget {
  const AppTextInput({
    super.key,
    this.focusNode,
    required this.onChanged,
    required this.onFieldSubmitted,
  });

  /// The focus node of the input
  final FocusNode? focusNode;

  /// Callback called every time the input text changes
  final void Function(String) onChanged;

  /// Callback called when the user submits the input
  final void Function(String) onFieldSubmitted;

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
        onFieldSubmitted: onFieldSubmitted,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
