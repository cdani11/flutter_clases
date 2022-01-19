import 'package:flutter/material.dart';

class ListView2Interface extends StatelessWidget {

  final options = const['Item 1','Item 2','Item 3','Item 4','Item 5','Item 6'];
   
  const ListView2Interface({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: const Text("Appbar"),
        //backgroundColor: Color.,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder:  (context, index) => ListTile( 
          title: Text(options[index]),
          trailing: const Icon( Icons.access_alarm),
          onTap: (){
            final item_content = options[index];
            const AlertDialog(title: Text('Hola'));
          },
        ), 
        separatorBuilder: (context, index) => const Divider(),
        ),
      /*body: ListView( 
        children:  [
          ...options.map(( item ) => ListTile( 
            title: Text( item ),
            trailing: const Icon(Icons.arrow_forward_ios ),
           )).toList()
        ],
      ),*/
    );
  }
}