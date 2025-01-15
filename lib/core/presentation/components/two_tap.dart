import 'package:flutter/material.dart';
import 'package:flutter_recipe_app_course/ui/color_styles.dart';
import 'package:flutter_recipe_app_course/ui/text_styles.dart';

class TwoTap extends StatelessWidget {
  final List<String> labels;
  final int selectedIndex;
  final void Function(int index) onChange;

  const TwoTap({
    super.key,
    required this.labels,
    this.selectedIndex = 0,
    required this.onChange, // default
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              onChange(0);
            },
            child: selectedIndex == 0
                ? _SelectedTap(text: labels[0])
                : _UnSelectedTap(text: labels[0]),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: GestureDetector(
            onTap: () {
              onChange(1);
            },
            child: selectedIndex == 1
                ? _SelectedTap(text: labels[1])
                : _UnSelectedTap(text: labels[1]),
          ),
        ),
      ],
    );
  }
}

class _SelectedTap extends StatelessWidget {
  final String text;

  const _SelectedTap({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorStyles.primary100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyles.smallerTextBold.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _UnSelectedTap extends StatelessWidget {
  final String text;

  const _UnSelectedTap({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorStyles.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyles.smallerTextBold.copyWith(
              color: ColorStyles.primary80,
            ),
          ),
        ],
      ),
    );
  }
}
