import 'package:flutter/material.dart';

class ListViewInterface extends StatelessWidget {

  final options = const['Item 1','Item 2','Item 3','Item 4','Item 5','Item 6'];
   
  const ListViewInterface({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: const Text("Appbar"),
      ),
      body: ListView( 
        children:  [
          ...options.map(( item ) => ListTile( 
            title: Text( item ),
            trailing: const Icon(Icons.arrow_forward_ios ),
           )).toList()
        ],
      ),
    );
  }
}