
import 'package:provider/single_child_widget.dart';

import '../grocery_mart.dart';

List<SingleChildWidget> registerGlobalNotifiers() {

  return [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
   
  ];
}
