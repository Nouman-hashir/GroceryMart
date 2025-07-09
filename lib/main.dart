import 'package:grocery_mart/grocery_mart.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cartStorageService = CartStorageService();
  await cartStorageService.loadCart();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      child: MultiProvider(
        providers: registerGlobalNotifiers(),
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          title: 'GroceryMart',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
        ),
      ),
    );
  }
}
