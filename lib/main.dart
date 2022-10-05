import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
     resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFFF2DCF),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
       body: Column(
         children: [
            const SizedBox(
             height: 420,
             child: WebView(
               javascriptMode: JavascriptMode.unrestricted,
               initialUrl: 'https://app.vectary.com/p/3ACnbExHykgmbBCoP2PyeT',
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: SingleChildScrollView(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const  Text("Heaphones Vectart II",style: TextStyle(fontFamily: "PingFang SC",fontSize: 20,fontWeight: FontWeight.bold)),
                   const  SizedBox(height: 5,),
                Wrap(
                  spacing: 10,
                  children:const [
                    Chip(label: Text("HEADPHONES",style: TextStyle(fontFamily: "Party LET",fontSize: 12,fontWeight: FontWeight.w400)),backgroundColor: Color(0xFFF2DCF),),
                    Chip(label: Text("ELECTRONICS",style: TextStyle(fontFamily: "Party LET",fontSize: 12,fontWeight: FontWeight.w400)),backgroundColor: Color(0xFFF2DCF),),
                  ],
                ),
                   const  SizedBox(height: 5,),
                  const Text("Hear and be heard clearly with a USB headset designed for busy open workspaces. Ready for business right out of the box, Zone Wired delivers premium audio and reliable call clarity with advanced noise-canceling mic technology.",style: TextStyle(
                     fontWeight: FontWeight.w400,fontSize: 12
                   )),
                   const  SizedBox(height: 5,),
                   Row(
                     children: [
                       const Text("Quantity"),
                       const Icon( Icons.remove),
                       Container(
                         padding: EdgeInsets.only(left: 10,right: 10),
                         margin: EdgeInsets.only(top: 10,bottom: 10),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           border: Border.all(color: Colors.grey)
                         ),
                         child:const Center(
                           child: Text("1"),
                         ),
                       ),
                       const Icon( Icons.add),
                     ],
                   ),
                   const  SizedBox(height: 5,),
                   Container(
                     margin:const EdgeInsets.only(left: 15,right: 15),
                    height: 40,
                     decoration: BoxDecoration(
                       color:const Color(0xFFB09391),
                       borderRadius: BorderRadius.circular(10)
                     ),
                     child:const Center(
                       child: Text("PURCHASE",style: TextStyle(fontFamily: "PingFang SC",fontSize: 16,color: Colors.white),),
                     ),
                   )
                 ],
               ),
             ),
           )
         ],
       ),
    );
  }
}
