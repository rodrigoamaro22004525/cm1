import 'package:flutter/material.dart';
import 'package:cm1/WelcomeCounter.dart' as yo;

void main() => runApp(MaterialApp(
      home: cm1(),
    ));

class cm1 extends StatefulWidget {
  @override
  State<cm1> createState() => _cm1State();
}

class _cm1State extends State<cm1> {

  void _setText() {
    setState(() => counter = title);
  }

  int title = 0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aula 1"),
        centerTitle: true,
        backgroundColor: Colors.indigo[800],
        elevation: 0.0,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
          child: Column(
            children: [
              Icon(Icons.arrow_circle_down_sharp,
                  color: Colors.amber[300], size: 30),

              yo.WelcomeCounter(counter: counter),


              Container(
                height: 30.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        counter += 1;
                      });
                    },
                    heroTag: null,
                    backgroundColor: Colors.indigo[200],
                    child: const Icon(Icons.plus_one),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        counter = 0;
                      });
                    },
                    heroTag: null,
                    backgroundColor: Colors.indigo[200],
                    child: const Icon(Icons.lock_reset_rounded),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        counter -= 1;
                      });
                    },
                    heroTag: null,
                    backgroundColor: Colors.indigo[200],
                    child: const Icon(Icons.exposure_minus_1),
                  ),
                ]),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0.0),
                child: TextField(
                  decoration: const InputDecoration(
                      labelText: 'Value to set',
                      border: OutlineInputBorder()
                  ),

                  onChanged: (value) => title = int.tryParse(value) ?? 0

                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0.0),
                child: TextButton(
                  onPressed: _setText,
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(8),
                    backgroundColor: MaterialStateProperty.all(Colors.indigo[50]),
                  ),

                  child: const Text('Press me to set value from input box above')
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}


