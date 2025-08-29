import "package:flutter/material.dart";
import "package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart";

class BCurvedEdgesWidget extends StatelessWidget {
  const BCurvedEdgesWidget({
    super.key, this.child
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BCustomeCurvedEdges(),
      child:child
    );
  }
}