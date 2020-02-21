import 'package:flutter/material.dart';
import 'package:coax/instruction.dart';
import 'data/instruction-data.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  static const routeName = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            var instruction = instructionList[index];

            return ListTile(
              title: Text(instruction.title),
              subtitle: Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.only(right: 13.0),
                      child: Text(
                        instruction.detail,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () => onTapped(instruction),
            );
          },
          itemCount: instructionList.length,
        )
      )
    );
  }

  void onTapped(Instruction instruction) {
      Navigator.pushNamed(context, InstructionPage.routeName,
        arguments: InstructionPageArgs(                               
        instruction.title,                              
        instruction.detail,  
        instruction.src
      ));
  }
}
