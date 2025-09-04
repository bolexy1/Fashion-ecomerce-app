import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:t_store/utils/constants/colors.dart';

class BPrimaryHeaderContainer extends StatelessWidget {
  const BPrimaryHeaderContainer({
    super.key, required this.child
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BCurvedEdgesWidget(
      child:  Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
          //   if [size.isfinite: is not true.in stock] error occurred -> read README.nd file at [DESIGNN ERRORS] # 1
    child: Stack(
      children: [       
      
        // background custom shapes
          Positioned(
          top: -150,
          right: -250,
          child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
          Positioned(
            top: 100,
            right: -300,
          child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1),)),
          child
          
        
      ],
                ),
    ),
            );
  }
}
