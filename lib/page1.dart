import 'package:dark_white_theme_flutter/provider/mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  //
  bool st = true;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 139, 130),
      ),
      body: Center(
        child: Switch(
            activeColor: Color.fromARGB(255, 13, 139, 130),
            value: st,
            onChanged: (value) {
              setState(() {
                st = value;
              });
              Provider.of<ModeProvider>(context, listen: false).chaneMode();
            }),

        /*  ElevatedButton(
            onPressed: () {
              Provider.of<ModeProvider>(context, listen: false).chaneMode();
            },
            child: Text("mode")),
            //
              setState(() {
                st = value;
                
              });
*/
      ),
      drawer: Drawer(),
    );
  }
}
