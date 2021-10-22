import 'package:flutter/material.dart';
import 'package:flutter_design_1/widgets/background.dart';
import 'package:flutter_design_1/widgets/boton_navigator.dart';
import 'package:flutter_design_1/widgets/card_table.dart';
import 'package:flutter_design_1/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [BackGroundW(), _HomeBody()],
      ),
      bottomNavigationBar: BtonVavigator(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
          //card table
          CardTable(),
        ],
      ),
    );
  }
}
