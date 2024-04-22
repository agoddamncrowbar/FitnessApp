// ignore_for_file: no_logic_in_create_state
import 'package:flutter/material.dart';
import 'package:projects/screens/workout.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';
import 'database_helper.dart';
class WorkoutList extends StatefulWidget{
  const WorkoutList({super.key});
  @override
  State<StatefulWidget> createState(){
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfiWeb;
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
      body: 
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("lib/images/bg.jpg"), fit: BoxFit.cover,),
          ),
          child: getWorkoutListView(),
      ),
      

      floatingActionButton: FloatingActionButton(
        child: 
        const Icon(Icons.add),
        onPressed: (){
          debugPrint('Add button clicked');
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
            leading: const CircleAvatar( backgroundColor: Colors.red,child: Icon(Icons.keyboard_arrow_right),),
            title: Text(dataList[index]['w_name'],style: titleStyle,),
            subtitle: Text(dataList[index]['w_desc']),
            trailing: const Icon(
              Icons.delete, 
              color: Colors.grey,),
            onTap: () {
              debugPrint("Delete button pressed");
              _deleteWorkout(dataList[index]['id']); // Pass the ID of the workout to delete
              _updateUI();
            },
            ),
            );
      },
      );
  }
  void _updateUI(){
    setState(() {
    });
  }
}
void _deleteWorkout(int id) async {
  // Call the deleteWorkout method from DatabaseHelper and pass the id
  int result = await DatabaseHelper.deleteWorkout(id);
  if (result != 0) {
    // If result is not 0, then deletion was successful
    debugPrint('Workout deleted successfully');
  } else {
    debugPrint('Error deleting workout');
  }
}