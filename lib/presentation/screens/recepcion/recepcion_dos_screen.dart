import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecepcionDosScreen extends StatelessWidget {
  const RecepcionDosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Recepción'),
        actions: [
          IconButton(
            icon: const Icon(Icons.switch_camera_rounded),
            onPressed: () {
              context.push('/recepcion_uno');
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Buscar',
                      suffixIcon: Icon(Icons.barcode_reader),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
                const SizedBox(width: 16,),
                ElevatedButton(onPressed: (){}, child: const Icon(Icons.refresh))
                // Expanded(
                //   child: FloatingActionButton.small(onPressed: (){}, child: const Icon(Icons.refresh)),
                // ),
              ],
            ),
            
            const SizedBox(height: 16.0),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(242, 242, 242, 1),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Center(
                  child: ListView(
                    padding: EdgeInsets.all(0),
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('OC'),
                        ),
                        title: Text('Cod. Doc.: 4876'),
                        subtitle: Text('Proveedor: ABC s.r.l.'),
                        trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: (){},),
                      ),
                      const Divider(),
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('OC'),
                        ),
                        title: Text('Cod. Doc.: 4876'),
                        subtitle: Text('Proveedor: ABC s.r.l.'),
                        trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: (){},),
                      ),
                      const Divider()
                    ],
                  ),
                ),
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Scan'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Buscar'),
                ),
              ],
            ),
          ],
        ),
      ),
      // drawer: SideMenu(scaffoldKey: scaffoldKey,),
    );
  }
}
