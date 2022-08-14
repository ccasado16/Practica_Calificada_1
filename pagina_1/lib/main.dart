import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String titulo = 'Login - Pagina 1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titulo,
      home: Scaffold(
        appBar: AppBar(title: const Text(titulo)),
        body: const WidgetPrincipal(),
        // body: const MyStatefulWidget(),
      ),
    );
  }
}

class WidgetPrincipal extends StatefulWidget {
  const WidgetPrincipal({Key? key}) : super(key: key);

  @override
  State<WidgetPrincipal> createState() => _WidgetPrincipalState();
}

class _WidgetPrincipalState extends State<WidgetPrincipal> {
  TextEditingController usuarioControlador = TextEditingController();
  TextEditingController passControlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(top: 50),
                child: SvgPicture.asset(
                  "assets/robot.svg",
                  width: 110,
                )),
            Container(
                // titulo login
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Inicio de Sesión',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              // Campo de texto para el nombre de usuario
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: usuarioControlador,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre de usuario',
                ),
              ),
            ),
            Container(
              // Campo de texto para las
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passControlador,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                ),
              ),
            ),
            TextButton(
              // Boton ¿Olvidó su contraseña?
              onPressed: () {
                // Codigo para la pagina respectiva
              },
              child: const Text(
                '¿Olvidó su contraseña?',
              ),
            ),
            Container(
                // Boton iniciar sesión
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Iniciar Sesión'),
                  onPressed: () {
                    print("Usuario: " + usuarioControlador.text);
                    print("Contraseña: " + passControlador.text);
                  },
                )),
          ],
        ));
  }
}
