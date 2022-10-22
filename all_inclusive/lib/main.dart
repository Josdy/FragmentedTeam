import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_image.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(100),
              ),
              Container(
                color: Colors.transparent,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                child: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/user_profile.jpg"),
                    radius: 20 //Text
                    ), //CircleAvatar
              ),
              Container(
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(2),
                  child: RichText(
                    text: const TextSpan(
                        text: 'Hola Carlos Junco',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ) //CircleAvatar
                  ),
              Container(
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  child: RichText(
                    text: const TextSpan(
                        text: 'Cambiar usuario',
                        style: TextStyle(
                            color: Color.fromRGBO(77, 123, 161, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ) //CircleAvatar
                  ),
              Container(
                color: Colors.transparent,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(41, 134, 203, 1),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(100, 45), //////// HERE
                  ),
                  onPressed: () => _showSimpleDialog(context),
                  child: const Text('Iniciar sesión'),
                ),
              ),
            ],
          ),
        ));
  }
}

Future<void> _showSimpleDialog(BuildContext context) async {
  await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
                text: 'Activando método de autenticación inclusiva',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
          children: <Widget>[
            SimpleDialogOption(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
                  foregroundColor: const Color.fromRGBO(105, 165, 210, 1),
                  minimumSize: const Size(100, 45), //////// HERE
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdRoute()),
                  );
                },
                child: const Text('Continuar'),
              ),
            ),
            SimpleDialogOption(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
                  foregroundColor: Colors.black,
                  minimumSize: const Size(100, 45), //////// HERE
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancelar'),
              ),
            ),
          ],
        );
      });
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(100),
              ),
              Container(
                color: Colors.transparent,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                child: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/user_profile.jpg"),
                    radius: 20 //Text
                    ), //CircleAvatar
              ),
              Container(
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(2),
                  child: RichText(
                    text: const TextSpan(
                        text: 'last site',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ) //CircleAvatar
                  ),
              Container(
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  child: RichText(
                    text: const TextSpan(
                        text: 'Cambiar usuario',
                        style: TextStyle(
                            color: Color.fromRGBO(77, 123, 161, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ) //CircleAvatar
                  ),
              Container(
                color: Colors.transparent,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(41, 134, 203, 1),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(100, 45), //////// HERE
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstRoute()),
                    );
                  },
                  child: const Text('Iniciar sesión'),
                ),
              ),
            ],
          ),
        ));
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_image_second.jpg"),
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.7),
              BlendMode.modulate,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(100),
              ),
              Container(
                color: Colors.transparent,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                child: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/user_profile.jpg"),
                    radius: 20 //Text
                    ), //CircleAvatar
              ),
              Container(
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(2),
                  child: RichText(
                    text: const TextSpan(
                        text: 'Hola Carlos Junco',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  ) //CircleAvatar
                  ),
              Container(
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  child: RichText(
                    text: const TextSpan(
                        text: 'Cambiar usuario',
                        style: TextStyle(
                            color: Color.fromRGBO(77, 123, 161, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ) //CircleAvatar
                  ),
              Container(
                color: Colors.transparent,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(41, 134, 203, 1),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(100, 45), //////// HERE
                  ),
                  child: const Text('Iniciar sesión'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstRoute()),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
