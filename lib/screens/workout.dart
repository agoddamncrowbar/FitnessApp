import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'database_helper.dart';
class Workout extends StatefulWidget{
  const Workout({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfiWeb;
    return WorkoutState();
  }
}

class WorkoutState extends State<Workout>{
  

  final _difficulty =['high','low'];
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _difficultyController = TextEditingController();
  void _saveData () async
  {
    final wName = _titleController.text;
    final wDesc = _descriptionController.text;
    final difficulty = _difficultyController.text;
    int insertID = await DatabaseHelper.insertWorkout(wName,wDesc,difficulty);
    if (kDebugMode) {
      print(insertID);
    }
  }
@override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.titleLarge;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout'),
      ),
      body:Padding(padding: 
      const EdgeInsets.only(top: 15.0,left: 10.0,right: 10.0),
      child: ListView(
        children: <Widget>[
          Expanded(
            child:  TextField(controller: _difficultyController)
            ),
            PopupMenuButton<String>
            (
              icon: const Icon(Icons.arrow_drop_down),
              onSelected: (String value) {
                _difficultyController.text = value;
                },
                itemBuilder: (BuildContext context) 
                {
                  return _difficulty.map<PopupMenuItem<String>>((String value) 
                  {
                    return PopupMenuItem(
                      value: value,
                      child:  Text(value));
                  }).toList();
                },
            ),
            Padding(
              padding: const EdgeInsets.only( top: 15.0, bottom: 15.0),
              child: TextField(
              controller: _titleController,
              style: textStyle,
              onChanged: (value){
              debugPrint('Title textfield value changed');
            },
              decoration: InputDecoration(
              labelText: 'Title',
              labelStyle: textStyle,
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0)
            ),
          ),
          ),
        ),
        Padding(
              padding: const EdgeInsets.only( top: 15.0, bottom: 15.0),
              child: TextField(
              controller: _descriptionController,
              style: textStyle,
              onChanged: (value){
              debugPrint('Title textfield value changed');
            },
              decoration: InputDecoration(
              labelText: 'Description',
              labelStyle: textStyle,
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0)
            ),
          ),
          ),
        ),

      Padding(
        padding: const EdgeInsets.only(top: 15.0,bottom: 15.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled))
                  {
                    return const Color.fromARGB(255, 35, 193, 255);
                  }
                    
                  return null; // Defer to the widget's default.
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled))
                  {
                    return const Color.fromARGB(255, 22, 22, 22);
                  }
                  return null; // Defer to the widget's default.
                }),
              ),onPressed: () 
              {
                setState(() 
                {
                  debugPrint("Save button clicked");
                });
                _saveData();
              }, 
              child: const Text(
                'Save'
                )   
              ),
            ),
            
            Container(width: 5.0,),
            
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) 
                  {
                    return const Color.fromARGB(255, 250, 94, 83);
                  }
                  return null; // Defer to the widget's default.
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled))
                  {
                    return const Color.fromARGB(255, 0, 0, 0);
                  }
                  return null; // Defer to the widget's default.
                }),
              ),onPressed: () {
                    setState(() {
                      debugPrint("Delete button clicked");
                    });
                  }, 
              child: const Text(
                'Delete'
                )
              ),
                ),
              ],
            ),
          ),
        ],
        ),
      ),
    );
  }
}