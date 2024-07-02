import 'package:flutter/material.dart';
import 'package:t_store/comman/custom_shapes/containers/tcircular.dart';
import 'package:t_store/comman/custom_shapes/containers/tcircularicon.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class TChoiceclip extends StatelessWidget {
  const TChoiceclip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox() :  Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      avatar: isColor ? TCircularContainer(
        width: 50,
        height: 50,
        backgroundColor: THelperFunctions.getColor(text)!
      ): null,
      shape: const CircleBorder(),
      backgroundColor: Colors.green,
      labelPadding: isColor ? const EdgeInsets.all(0): null,
      padding:isColor ? const EdgeInsets.all(0): null,
      selectedColor:isColor ? THelperFunctions.getColor(text)! : null,
    );
  }
}
