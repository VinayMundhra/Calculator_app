import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1=0, num2=0, result=0;
  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');

   void doAddition(){
  setState(() {
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    result=num1+num2;
  });
}
void doSub(){
  setState(() {
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    result=num1-num2;
  });
}
void doMul(){
  setState(() {
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    result=num1*num2;
  });
}
void doDiv(){
  setState(() {
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    result= num1 ~/num2;
  });
}
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    await Future<dynamic>.delayed(Duration(seconds: 2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Output : $result',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold, 
                color: Colors.purple
                ),
                ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter Number',
                  labelText: 'Number 1',
                ),
                controller: t1,
                // validator: (String? value) {
                //   if (value!.isEmpty) {
                //     return 'Number Field cannot be empty';
                //   }
                //   return null;
                // },
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter Number',
                  labelText: 'Number 2',
                ),
                controller: t2,
                // validator: (String? value) {
                //   if (value!.isEmpty) {
                //     return 'Number Field cannot be empty';
                //   }
                //   return null;
                // },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                      color: Colors.white38,
                      onPressed: doAddition,
                      child: Text('+')),
                  MaterialButton(
                      color: Colors.white38,
                      onPressed: doSub,
                      child: Text('-')),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                        color: Colors.white38,
                        onPressed: doMul,
                        child: Text('*')),
                    MaterialButton(
                        color: Colors.white38,
                        onPressed: doDiv,
                        child: Text('/')),
                  ],
                ),
              ),
              // Material(
              //   child: InkWell(
              //     child: AnimatedContainer(
              //       duration: Duration(seconds: 1),
              //       width: 150,
              //       height: 50,
              //       alignment: Alignment.center,
              //       child: Text('Calculate',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //         fontSize: 18
              //       ),),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
