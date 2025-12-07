import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter app',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const CounterScreen(),

    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _inc(){
    setState(() {
      _counter++;
    });
  }

  void _dec(){
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App',),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('your current count is:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('$_counter',style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
            SizedBox(height: 10 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _dec,
                  style: ButtonStyle(), 
                  child: Tooltip(message: 'Decrement',
                  child: Icon(Icons.remove,size: 30,color: Colors.blue,),)),
                  SizedBox(width: 30,),
                  ElevatedButton(
                  onPressed: _inc,
                  style: ButtonStyle(), 
                  child: Tooltip(message: 'increment',
                  child: Icon(Icons.add,size: 30,color: Colors.blue,),))
              ],
            )
          ],
        ),),
        
      ),
    );
  }
}