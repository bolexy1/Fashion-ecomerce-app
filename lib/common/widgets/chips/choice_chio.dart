import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BChoiceChip extends StatelessWidget {
  const BChoiceChip({
    super.key, required this.text, required this.selected, this.onSelected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = BHelperFunctions.getColor(text) != null;
    return
        Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
          child: ChoiceChip(
            label: isColor ? const SizedBox():  Text(text), 
          selected: selected, 
          onSelected: onSelected, 
          labelStyle:  TextStyle(color: selected ? BColors.white : null),
          avatar: isColor 
                 ? TCircularContainer(width: 50, height: 50, backgroundColor: BHelperFunctions.getColor(text)!,) : null,
          shape: isColor ? const CircleBorder(): null,
          labelPadding:isColor ? const EdgeInsets.all(0) :null,
          padding: isColor ? const EdgeInsets.all(0) : null,
          selectedColor: isColor  ? Colors.green : null,
          backgroundColor:  isColor ? BHelperFunctions.getColor(text)! : null,
          ),
        );     
    
  }
}