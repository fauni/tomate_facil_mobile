import 'package:flutter/material.dart';

class ReportesScreen extends StatelessWidget {
  const ReportesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reportes'),
      ),

      body: const Center(child: Center(child: Text('Reportes'),)),
      // drawer: const SideMenu(),
    );
  }
}

