import 'package:flutter/material.dart';
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
                    Navigator.push(context, MaterialPageRoute(
                              builder: (context){
                            return WorkoutList();
          }));

                  }, 
              child: 
              const Text(
                'Login',
                style: TextStyle(color: Colors.white,fontSize: 20),
                )   
              ),
            ),
            
            Container(width: 20.0,),
            
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
                              builder: (context) =>Page2())
                            );

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
class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
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
                      SizedBox(height: 30,),
                  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
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
                onPressed: () {
                    setState(() {
                      debugPrint("Register button clicked");
                    });
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