import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      	child: Container(
	        child: Column(
	          children: <Widget>[
	            Container(
	              height: 150,
	              decoration: BoxDecoration(
	                image: DecorationImage(
	                  image: AssetImage('assets/images/atas.png'),
	                  fit: BoxFit.cover,
	                )
	              ),
	              child: Stack(
	                children: <Widget>[
	                ],
	              ),
	            ),
							Container(
								height: 220,
								decoration: BoxDecoration(
										image: DecorationImage(
											image: AssetImage('assets/images/logo.jpg'),
										)
								),
								child: Stack(
									children: <Widget>[
									],
								),
							),
							SizedBox(height: 10,),
							Container(
									alignment: Alignment.topLeft,
									padding: EdgeInsets.only(left:28, bottom: 0, right: 0, top:10),
									child: const Text(
										'Login Page',
										style: TextStyle(
												color: Colors.amber,
												fontFamily: 'Poppins',
												fontWeight: FontWeight.bold,
												fontSize: 22),

									)),
							//SizedBox(height: 10,),
							Padding(
	              padding: EdgeInsets.all(25.0),
	              child: Column(
	                children: <Widget>[
	                  FadeInUp(duration: Duration(milliseconds: 1800), child: Container(
	                    padding: EdgeInsets.all(0),
	                    child: Column(
	                      children: <Widget>[
													Container(
														padding: const EdgeInsets.all(1),
														child: TextField(
															decoration: const InputDecoration(
																border: OutlineInputBorder(),
																labelText: 'User Name',
															),
														),
													),
													SizedBox(height: 8,),
													Container(
														padding: const EdgeInsets.all(1),
														child: TextField(
															obscureText: true,
															decoration: const InputDecoration(
																border: OutlineInputBorder(),
																labelText: 'Password',
															),
														),
													),
	                      ],
	                    ),
	                  )),
	                  SizedBox(height: 30,),
	                  FadeInUp(duration: Duration(milliseconds: 1900), child: Container(
	                    height: 50,
	                    decoration: BoxDecoration(
	                      borderRadius: BorderRadius.circular(10),
	                      gradient: LinearGradient(
	                        colors: [
	                          Color.fromRGBO(228, 174, 58, 1),
	                          Color.fromRGBO(202, 91, 165, 1),
	                        ]
	                      )
	                    ),
	                    child: Center(
	                      child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
	                    ),
	                  )),
	                  SizedBox(height: 20,),
	                  FadeInUp(duration: Duration(milliseconds: 2000), child: Text("Forgot Password?", style: TextStyle(color: Colors.grey,fontFamily: 'Outfit',
											fontWeight: FontWeight.normal,),)),
	                ],
	              ),
	            )
	          ],
	        ),
	      ),
      )
    );
  }
}