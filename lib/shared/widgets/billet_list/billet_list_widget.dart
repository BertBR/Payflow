import 'package:flutter/material.dart';
import 'package:payflow/shared/models/billet_model.dart';
import 'package:payflow/shared/widgets/billet_list/billet_list_controller.dart';
import 'package:payflow/shared/widgets/billet_tile/billet_tile.dart';

class BilletListWidget extends StatefulWidget {
  const BilletListWidget({Key? key}) : super(key: key);

  @override
  _BilletListWidgetState createState() => _BilletListWidgetState();
}

class _BilletListWidgetState extends State<BilletListWidget> {
  final controller = BilletListController();
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.billetsNotifier,
      builder: (_, billets, __) => Column(
        children:
            controller.billets.map((e) => BilletTileWidget(data: e)).toList(),
      ),
    );
  }
}
