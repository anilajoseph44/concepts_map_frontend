import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(padding: EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 90,),

              Row(
                children: [
                  SizedBox(width: 23,),
                  Text("New user?"),
                  Text(" Sign up",style: TextStyle(color: Colors.orange),),
                ],
              ),
              Image.asset("assets/conceptsmap.png"),
              Text(" Welcome to our portal where you can explore ultimate ads concepts from our fresh and talented brains",style: TextStyle(color: Colors.grey.withOpacity(0.99)),),
              SizedBox(height: 50,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange)
                  ),
                  labelText: "E-mail",
                  labelStyle: TextStyle(color: Colors.orange),
                  hintText: "example@gmail.com",
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.50)),
                  suffixIcon: Icon(Icons.alternate_email,color: Colors.grey.withOpacity(0.50),),
                  floatingLabelBehavior: FloatingLabelBehavior.always
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange)
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.orange),
                    hintText: "6+ strong character",
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.50)),
                    suffixIcon: Icon(Icons.lock,color: Colors.grey.withOpacity(0.50),),
                    floatingLabelBehavior: FloatingLabelBehavior.always
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: 330,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.orange.withOpacity(0.99),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero
                    )
                  ),
                    onPressed: ()
                    {

                    },
                    child: Text("Sign in")),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(child: Divider(
                    color: Colors.grey.withOpacity(0.50),
                  ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Or sign in with",style: TextStyle(color: Colors.grey),),),
                  Expanded(child: Divider(
                    color: Colors.grey,
                  ))

                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                      onPressed: ()
                      {

                      },
                      icon: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/36px-Google_%22G%22_logo.svg.png?20230822192911"),
                      label: Text("")),
                  SizedBox(width: 40,),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                      onPressed: ()
                      {

                      },
                      icon: Image.network("https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Facebook_f_logo_%282021%29.svg/768px-Facebook_f_logo_%282021%29.svg.png?20210818083032",height: 28,),
                      label: Text(""),
                  ),
                  SizedBox(width: 40,),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    onPressed: ()
                    {

                    },
                    icon: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/LinkedIn_icon.svg/108px-LinkedIn_icon.svg.png?20210220164014",height: 28,),
                    label: Text(""),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
