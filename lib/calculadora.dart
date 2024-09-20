import 'package:flutter/material.dart';

class CalculadoraBase extends StatefulWidget {
  const CalculadoraBase({super.key});

  @override
  State<CalculadoraBase> createState() => _CalculadoraBaseState();
}

class _CalculadoraBaseState extends State<CalculadoraBase> {
  String resultado = '';

  void calcular(String tecla) {
    switch(tecla) {
      case '7':
      setState(() {
        resultado += tecla;        
      });      
      break;  

      default:
        resultado += tecla;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Calculadora básica')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'resultado',
                  style: TextStyle(fontSize: 72),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'AC',
                  style: TextStyle(fontSize: 48),
                ),
                Text(''),
                Text(''),
                Text(
                  '<X',
                  style: TextStyle(fontSize: 48),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () { 
                    print('clicou');
                    calcular('7');
                  },
                  child: const Text(
                    '7',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                const Text(
                  '8',
                  style: TextStyle(fontSize: 48),
                ),
                const Text(
                  '9',
                  style: TextStyle(fontSize: 48),
                ),
                const Text(
                  '/',
                  style: TextStyle(fontSize: 48),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '4',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '5',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '6',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  'X',
                  style: TextStyle(fontSize: 48),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '1',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '2',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '3',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '-',
                  style: TextStyle(fontSize: 48),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '0',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  ',',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '=',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '+',
                  style: TextStyle(fontSize: 48),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
