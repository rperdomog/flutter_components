import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(title: const Text('Componentes de Flutter')),
        body: ListView.separated(
            // ignore: prefer_const_constructors
            itemBuilder: (context, i) => ListTile(
                  leading: Icon(
                    menuOptions[i].icon,
                    color: AppTheme.primary,
                  ),
                  title: Text(menuOptions[i].name),
                  onTap: (() {
                    // MODO 1 DE NAVEGACION SIN RUTAS GENERADAS
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const ListViewScreen());
                    // Navigator.pushNamed(context, route);

                    // MODO 2 CON LAS RUTAS GENERADAS
                    Navigator.pushNamed(context, menuOptions[i].route);
                  }),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
