import 'package:flutter/material.dart';
import 'package:projects/screens/workout.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'database_helper.dart';
class WorkoutList extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
    return WorkoutListState();
  }
}
class WorkoutListState extends State<WorkoutList>{
  List<Map<String, dynamic>> dataList = [];
  void _fetchWorkouts() async
  {
    List<Map<String, dynamic>> workoutList= await DatabaseHelper.getData();
    setState(() {
      dataList = workoutList;
    });
  }
  @override
  void initState() {
    _fetchWorkouts();
    super.initState();
  }
  int count = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Workouts'),
      backgroundColor: Colors.black,
      titleTextStyle: const TextStyle(color: Colors.orange, fontSize: 25, fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.black,
      body: getWorkoutListView(),
      floatingActionButton: FloatingActionButton(
        child: 
        const Icon(Icons.add),
        onPressed: (){
          debugPrint('FAB clicked');
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const Workout();
          }));
        },
        ),
      );
  }
  ListView getWorkoutListView(){
    TextStyle? titleStyle = Theme.of(context).textTheme.labelSmall;
    return ListView.builder(
      itemCount: dataList.length,
      itemBuilder:( context, index){
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: const CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text(dataList[index]['w_name'],style: titleStyle,),
            subtitle: Text(dataList[index]['w_desc']),
            trailing: const Icon(Icons.delete, color: Colors.grey,),
            onTap: () {
              debugPrint("Tap");
            },
            ),
            );
      },
      );
  }
}
