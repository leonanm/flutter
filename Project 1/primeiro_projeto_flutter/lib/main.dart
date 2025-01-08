import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Text('Tarefas'),
        ),
        body: ListView(
          children: [
            Task('Andar de bike'),
            Task('Aprender Flutter'),
            Task('Jogar na mega-sena'),
            Task('Andar de bike'),
            Task('Aprender Flutter'),
            Task('Jogar na mega-sena'),
            Task('Andar de bike'),
            Task('Aprender Flutter'),
            Task('Jogar na mega-sena'),
          ],
        ),
      ),
    );
  }
}

class Task extends StatelessWidget {
  final String nome;
  const Task(this.nome, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Container(
              color: Colors.white,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.black26,
                    width: 72,
                    height: 100,
                  ),
                  Container(
                    width: 200,
                    child: Text(
                      nome,
                      style: TextStyle(fontSize: 24),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Cor de fundo azul
                      foregroundColor: Colors.white, // Cor do ícone ou texto
                      iconColor: Colors.white,
                    ),
                    child: Icon(Icons.arrow_drop_up),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
