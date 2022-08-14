import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String titulo = 'Login - Pagina 1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titulo,
      home: Scaffold(
        body: RegistroWidget(),
      ),
    );
  }
}

class RegistroWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistroWidgetState();
  }
}

class _RegistroWidgetState extends State<RegistroWidget> {
  TextEditingController nombreControlador = TextEditingController();
  TextEditingController emailControlador = TextEditingController();
  TextEditingController passControlador = TextEditingController();
  TextEditingController cpassControlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: SvgPicture.asset(
                  "assets/nyan.svg",
                  width: 150,
                )),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Regístrese",
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Container(
              // Campo para el nombre
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nombreControlador,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Nombre"),
              ),
            ),
            Container(
              // Campo para el email
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailControlador,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Correo electrónico"),
              ),
            ),
            Container(
              // Campo para la contraseña
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: passControlador,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Contraseña"),
              ),
            ),
            Container(
              // campo para confirmar la contraseña
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: cpassControlador,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Confirme su contraseña"),
              ),
            ),
            Container(
                // Boton iniciar sesión
                height: 50,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    print("Nombre: " + nombreControlador.text);
                    print("Email: " + emailControlador.text);
                    print("Contraseña: " + cpassControlador.text);
                    print("Contraseña: " + passControlador.text);
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.purple),
                )),
            Row(
              children: <Widget>[
                const Text(
                  '¿Ya tiene una cuenta?',
                  style: TextStyle(fontSize: 15),
                ),
                TextButton(
                  child: const Text(
                    'Inicie Sesión',
                    style: TextStyle(fontSize: 15, color: Colors.purple),
                  ),
                  onPressed: () {
                    // Codigo correspondiente
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
