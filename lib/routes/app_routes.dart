import 'package:flutter_frontend_comps/models/menu_option.dart';
import 'package:flutter_frontend_comps/screems/screems.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final options = <MenuOption>[
    MenuOption(route: 'listView', icon: Icons.list, name: 'Interface de Lista', screem: const ListViewInterface()),
    MenuOption(route: 'card', icon: Icons.card_giftcard_rounded, name: 'Interface de Cards', screem: const Cards()),
    MenuOption(route: 'slide', icon: Icons.slideshow, name: 'Interface de Sliders', screem: const Sliders()),
    MenuOption(route: 'listView2', icon: Icons.list, name: 'Interface de Lista', screem: const ListView2Interface()),
    MenuOption(route: 'home', icon: Icons.home, name: 'Interface de Lista', screem: const HomeInterface())
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'listView' : (BuildContext context) => const ListViewInterface(),
  //   'card' : (BuildContext context) => const Cards(),
  //   'slide' : (BuildContext context) => const Sliders(),
  //   'listView2' : (BuildContext context) => const ListView2Interface(),
  //   'home' :  (BuildContext context) => const HomeInterface()
  // } ;

  static Map<String, Widget Function(BuildContext)> getRoutes(){
    Map<String , Widget Function(BuildContext)> routes = {};
    for( final option in options ){
        routes.addAll( {
          option.route : (BuildContext context) => option.screem
        } );
    }
    return routes;
  }

  static Route<dynamic>? onGenerateRoute( RouteSettings settings){
    print(settings);
        return MaterialPageRoute(
          builder: ( context ) => const Sliders());
  }
}