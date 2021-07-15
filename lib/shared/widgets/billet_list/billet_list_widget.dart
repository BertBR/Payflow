import 'package:flutter/material.dart';
import 'package:payflow/shared/widgets/billet_list/billet_list_controller.dart';
import 'package:payflow/shared/widgets/billet_tile/billet_tile.dart';

class BilletListWidget extends StatefulWidget {
  final BilletListController controller;
  const BilletListWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  _BilletListWidgetState createState() => _BilletListWidgetState();
}

class _BilletListWidgetState extends State<BilletListWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.controller.billetsNotifier,
      builder: (_, billets, __) => Column(
        children: widget.controller.billets
            .map((e) => BilletTileWidget(data: e))
            .toList(),
      ),
    );
  }
}
