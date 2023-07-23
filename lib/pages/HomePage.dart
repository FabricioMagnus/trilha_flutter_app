import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilha_flutter_app/services/random_number_generator.dart';

class HomePageState extends StatefulWidget {
  const HomePageState({super.key});

  @override
  State<HomePageState> createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePageState> {
  var numberGerado = 0;

  var quantidadeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            Row(
              children: [
                Expanded(child: Container()),
                Expanded(
                  flex: 7,
                  child: Image.network(
                      "https://hermes.digitalinnovation.one/assets/diome/logo.png"),
                ),
                Expanded(child: Container()),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Já tem Cadastro?",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 35,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Faça seu login e make the change_",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 18),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 30,
                alignment: Alignment.center,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 141, 79, 151),
                    )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 141, 79, 151),
                    )),
                    hintText: "Digite seu e-mail",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.purple[800],
                    ),
                  ),
                )),
            const SizedBox(
              height: 25,
            ),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 30,
                alignment: Alignment.center,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromARGB(255, 141, 79, 151),
                      )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromARGB(255, 141, 79, 151),
                      )),
                      hintText: "Digite sua senha",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.password_outlined,
                        color: Colors.purple[800],
                      ),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.white,
                      )),
                )),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              height: 40,
              alignment: Alignment.center,
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: TextButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.purple[800],
                        )),
                    onPressed: () {},
                    child: const Text(
                      "ENTRAR",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 30,
              alignment: Alignment.center,
              child: Text("Esqueci minha senha",
                  style: TextStyle(
                    color: Colors.yellow[600],
                    fontWeight: FontWeight.w200,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 30,
              alignment: Alignment.center,
              child: Text("Criar conta",
                  style: TextStyle(
                    color: Colors.green[900],
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
