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
          leading: Container(),
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

class Task extends StatefulWidget {
  final String nome;
  const Task(this.nome, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
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
            Column(
              children: [
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
                      SizedBox(
                        width: 200,
                        child: Text(
                          widget.nome,
                          style: TextStyle(fontSize: 24),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue, // Cor de fundo azul
                            foregroundColor:
                                Colors.white, // Cor do ícone ou texto
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Bordas arredondadas
                            ),
                            padding: EdgeInsets
                                .zero, // Remove padding padrão para alinhar conteúdo
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Alinha ícone e texto no centro
                            children: [
                              Icon(Icons.arrow_drop_up, size: 16),
                              SizedBox(
                                  height: 2), // Espaço entre o ícone e o texto
                              Text(
                                'UP',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: SizedBox(
                        width: 200,
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          backgroundColor: Colors.grey, // Opcional
                          value: nivel / 10,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'Nível: $nivel',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
