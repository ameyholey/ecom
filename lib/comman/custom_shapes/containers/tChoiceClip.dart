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
    return ChoiceChip(
      label: THelperFunctions.getColor(text) != null ? SizedBox() : Text(''),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      avatar: THelperFunctions.getColor(text) != null ? TCircularContainer(
        width: 50,
        height: 50,
        backgroundColor: Colors.green,
      ),
      shape: CircleBorder(),
      backgroundColor: Colors.green,
      labelPadding: EdgeInsets.all(0),
      padding: EdgeInsets.all(0),
      selectedColor: Colors.green,
    );
  }
}
