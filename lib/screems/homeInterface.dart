import 'package:flutter/material.dart';
import 'package:flutter_frontend_comps/routes/app_routes.dart';
import 'package:flutter_frontend_comps/screems/screems.dart';

class HomeInterface extends StatelessWidget {
   
  const HomeInterface({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: const Text("Appbar"),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.options[index].icon),
          title: Text(AppRoutes.options[index].name),
          onTap: (){
            /*final route = MaterialPageRoute(
              builder: (context) => const ListViewInterface());
              Navigator.push(context, route);
              Navigator.*/
              //Navigator.pushReplacement(context, route );
              Navigator.pushNamed( context, AppRoutes.options[index].route );
          },
        ), 
        separatorBuilder: ( context, index  ) => const Divider(), 
        itemCount: AppRoutes.options.length));
  }
}