import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFirstBoxClicked = false;
  bool isSecondBoxClicked = false;
  bool isThirdBoxClicked = false;
  bool isFourthBoxClicked = false;
  bool isFifthBoxClicked = false;
  bool isSixthBoxClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20)
          ),
          height: 300,
          width: 600,
          child: Column(
            children: [
              SizedBox(height: 60,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isFirstBoxClicked = true;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      color: isFirstBoxClicked ? Colors.green : Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isSecondBoxClicked = true;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      color: isSecondBoxClicked ? Colors.green : Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isThirdBoxClicked = true;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      color: isThirdBoxClicked ? Colors.green : Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isFourthBoxClicked = true;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      color: isFourthBoxClicked ? Colors.green : Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isFifthBoxClicked = true;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      color: isFifthBoxClicked ? Colors.green : Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isSixthBoxClicked = true;
                        Future.delayed(Duration(seconds: 2), (){
                          setState(() {
                            isSixthBoxClicked = false;
                          });
                        });
                        Future.delayed(Duration(seconds: 4), (){
                          setState(() {
                            isFifthBoxClicked = false;
                          });
                        });
                        Future.delayed(Duration(seconds: 6), (){
                          setState(() {
                            isFourthBoxClicked = false;
                          });
                        });
                        Future.delayed(Duration(seconds: 8), (){
                          setState(() {
                            isThirdBoxClicked = false;
                          });
                        });
                        Future.delayed(Duration(seconds: 10), (){
                          setState(() {
                            isSecondBoxClicked = false;
                          });
                        });
                        Future.delayed(Duration(seconds: 12), (){
                          setState(() {
                            isFirstBoxClicked = false;
                          });
                        });
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      color: isSixthBoxClicked ? Colors.green : Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


