import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:shared_preferences/shared_preferences.dart';
>>>>>>> 60068e0 (fitness app without login logic)
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'screens/workoutlist.dart';
Future main() async {

// Initialize FFI
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  runApp( const MaterialApp(
  home:  MyApp())
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
<<<<<<< HEAD
=======
  var email;
  var pass;
  getSavedData() async{
    final prefs = await SharedPreferences.getInstance();
    email = prefs.getString('email');
    pass = prefs.getString('pass');
  } 
  final unameController = TextEditingController();
  final passController = TextEditingController();
  final emailController = TextEditingController();
>>>>>>> 60068e0 (fitness app without login logic)
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    title: 'Fitness Check',
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Login',
            style: TextStyle(
              fontSize: 45,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Form(
              child:Column(
                children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
<<<<<<< HEAD
=======
                  controller: emailController,
>>>>>>> 60068e0 (fitness app without login logic)
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.orange),
                    hintText: 'Enter Your Email',
                    prefixIcon: Icon(Icons.email, color: Colors.orange),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)
                    )
                  ),
                          onChanged: (String value){         
                          },
                          validator: (value) {
                            return value!.isEmpty ? 'Please enter email address': null;
                          },
                        ),
                    ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          controller: passController,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.orange),
                            hintText: 'Enter Your Password',
                            prefixIcon: Icon(Icons.password, color: Colors.orange),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange)
                            ),
>>>>>>> 60068e0 (fitness app without login logic)
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
                          )
                          ),
                          onChanged: (String value){
                                      
                          },
                          validator: (value) {
                            return value!.isEmpty ? 'Please enter password': null;
                          },
                        ),
                      ),

                      Container(
                        width: 5.0),
                      Padding(
                        padding: 
                        const EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 10),
                        
                        child: Row(
          children: <Widget>[
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.orange,width: 5),
                  backgroundColor: Colors.black,
                ),
              onPressed: () {
                    setState(() {
                      debugPrint("Login button clicked");
                    });
<<<<<<< HEAD
                    Navigator.push(context, MaterialPageRoute(
                              builder: (context){
                            return WorkoutList();
          }));
=======
                    getSavedData();
                    if(email==emailController.text&&pass==passController.text){
                      Navigator.push(context, MaterialPageRoute(
                              builder: (context){
                            return WorkoutList();
          }));
          }
                    
>>>>>>> 60068e0 (fitness app without login logic)

                  }, 
              child: 
              const Text(
                'Login',
                style: TextStyle(color: Colors.white,fontSize: 20),
                )   
              ),
<<<<<<< HEAD
            ),
            
            Container(width: 20.0,),
            
=======
            ),    
            Container(width: 20.0,),
>>>>>>> 60068e0 (fitness app without login logic)
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.orange,width: 5),
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                    setState(() {
                      debugPrint("Register button clicked");
                    });
                    Navigator.push(context, MaterialPageRoute(
<<<<<<< HEAD
                              builder: (context) =>Page2())
                            );

=======
                              builder: (context) =>const Page2())
                            );
>>>>>>> 60068e0 (fitness app without login logic)
                  }, 
              child: 
              const Text(
                'Register',
                style: TextStyle(color: Colors.white,fontSize: 20),
                )
<<<<<<< HEAD
                
                
=======
>>>>>>> 60068e0 (fitness app without login logic)
              ),
            ),
          ],
          ),
                      ),
                  ],
                ),
                ),
            ),
          ],
          ),
          ),
              );
  }
  
}
class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
<<<<<<< HEAD
=======
  final unameController = TextEditingController();
  final passController = TextEditingController();
  final emailController = TextEditingController();
>>>>>>> 60068e0 (fitness app without login logic)
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Register for Fitness App',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Form(
              child:Column(
                children: [
                  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: 'Contact',
                    labelStyle: TextStyle(color: Colors.orange),
                    hintText: 'Enter Your phone number',
                    prefixIcon: Icon(Icons.call, color: Colors.orange),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)
                    )
                  ),
                          onChanged: (String value){         
                          },
                          validator: (value) {
                            return value!.isEmpty ? 'Please enter phone number': null;
                          },
                        ),
                    ),
<<<<<<< HEAD
                      SizedBox(height: 30,),
                  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
=======
                     const SizedBox(height: 30,),
                  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: unameController,
>>>>>>> 60068e0 (fitness app without login logic)
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.orange),
                    hintText: 'Enter Your Username',
                    prefixIcon: Icon(Icons.person, color: Colors.orange),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)
                    )
                  ),
                          onChanged: (String value){         
                          },
                          validator: (value) {
                            return value!.isEmpty ? 'Please enter Username': null;
                          },
                        ),
                    ),
                      SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
<<<<<<< HEAD
=======
                  controller: emailController,
>>>>>>> 60068e0 (fitness app without login logic)
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.orange),
                    hintText: 'Enter Your Email',
                    prefixIcon: Icon(Icons.email, color: Colors.orange),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)
                    )
                  ),
                          onChanged: (String value){         
                          },
                          validator: (value) {
                            return value!.isEmpty ? 'Please enter email address': null;
                          },
                        ),
                    ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
<<<<<<< HEAD
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.orange),
                          hintText: 'Enter Your Password',
                          prefixIcon: Icon(Icons.password, color: Colors.orange),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
=======
                          controller: passController,
                          keyboardType: TextInputType.visiblePassword,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.orange),
                            hintText: 'Enter Your Password',
                            prefixIcon: Icon(Icons.password, color: Colors.orange),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange)
>>>>>>> 60068e0 (fitness app without login logic)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.orange)
                          )
                          ),
                          onChanged: (String value){
                                      
                          },
                          validator: (value) {
                            return value!.isEmpty ? 'Please enter password': null;
                          },
                        ),
                      ),

                      Container(
                        width: 5.0),
                      Padding(
                        padding: 
                        const EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 10),
                        
                        child: Row(
          children: <Widget>[
                        
            Container(width: 20.0,),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.orange,width: 5),
                  backgroundColor: Colors.black,
                ),
<<<<<<< HEAD
                onPressed: () {
                    setState(() {
                      debugPrint("Register button clicked");
                    });
=======
                onPressed: () async 
                  {
                    FocusScope.of(context).unfocus();
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.setString('email',emailController.text);
                    await prefs.setString('pass',passController.text);
                    setState(() {
                      debugPrint("Register button clicked");
                    });
                    
>>>>>>> 60068e0 (fitness app without login logic)
                    Navigator.of(context).pop();
                  }, 
              child: 
              const Text(
                'Register',
                style: TextStyle(color: Colors.white,fontSize: 20),
                )   
              ),
            ),
          ],
          ),
                      ),
                  ],
                ),
                ),
            ),
          ],
          ),
          ),
              );
  }
  
}