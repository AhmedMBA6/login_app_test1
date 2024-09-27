import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
            Colors.orange.shade900,
            Colors.orange.shade800,
            Colors.orange.shade400
          ])
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            const SizedBox(height: 80,),
            const Padding(padding: EdgeInsets.all(20),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                 Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                 SizedBox(height: 10,),
                 Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),)
              ],
            ),),
            const SizedBox(height: 20,),
            Expanded(child:Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))
              ),
              child: Padding(padding:const EdgeInsets.all(30),child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                      ),
                      child: const  TextField(
                        decoration: InputDecoration(
                          hintText: "Email or Phone number",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                      ),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    const SizedBox(height: 40,),
                    const Text("Forgot Password?", style: TextStyle(color: Colors.grey),),
                    const SizedBox(height: 40,),
                    MaterialButton(
                      height: 50,
                      onPressed: (){
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      color: Colors.orange[900],
                      // margin: const EdgeInsets.symmetric(horizontal: 50),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(50),
                      //   color: Colors.orange[900]
                      // ),
                      child: const Center(child: Text("Login" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),)),
                    ),
                    const SizedBox(height: 50,),
                    const Text("Continue with social media", style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 30,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: MaterialButton(
                      height: 50,
                      onPressed: (){
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      color: Colors.blue,
                      // margin: const EdgeInsets.symmetric(horizontal: 50),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(50),
                      //   color: Colors.orange[900]
                      // ),
                      child: const Center(child: Text("Facebook" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),)),
                    ),
                        ),
                        const SizedBox(width: 30,),
                        Expanded(
                          child: MaterialButton(
                      height: 50,
                      onPressed: (){
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      color: Colors.black,
                      // margin: const EdgeInsets.symmetric(horizontal: 50),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(50),
                      //   color: Colors.orange[900]
                      // ),
                      child: const Center(child: Text("Github" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold ),)),
                    ),
                        )
                      ],
                    )

                  ],
                ),
              ),),
            ),)

          ],
        ),
      ),

    );
  }
}