import 'package:flutter/material.dart';
import 'package:tomate_facil/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Pantalla Principal'),
      ),
      body: const _HomeScreenView(),
      drawer: SideMenu(scaffoldKey: scaffoldKey,),
    );
  }
}


class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return Container(child: const Center(child: Text('Principal'),),);
  }
}