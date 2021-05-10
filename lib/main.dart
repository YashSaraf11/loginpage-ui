import 'package:flutter/material.dart';
import './sign_up.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Login-Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home:LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> { 
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    //var height=MediaQuery.of(context).size.height;

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body:Container(
          padding: EdgeInsets.fromLTRB(30, 100, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize:MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Text(
              'Hello',
              style:TextStyle(
                fontSize:80,
                fontFamily:'Proxima Nova',
                fontWeight: FontWeight.bold,                
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
              'There',
              style:TextStyle(
                fontSize:80,
                fontFamily:'Proxima Nova',
                fontWeight: FontWeight.bold,                
              ),
            ),
            Text(
              '.',
              style:TextStyle(
                color: Colors.green,
                fontSize:80,
                fontFamily:'Proxima Nova',
                fontWeight: FontWeight.bold,                
              ),
            ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              autofocus: false,

              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontFamily:'Proxima Nova',
                  fontWeight: FontWeight.w600,
                  fontSize:15,
                  letterSpacing:3.0,
                ),
                labelText:'EMAIL',            
              ),
              keyboardType: TextInputType.emailAddress,
            ),            
            TextField(
              autofocus: false,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontFamily:'Proxima Nova',
                  fontWeight: FontWeight.w600,
                  fontSize:15,
                  letterSpacing:2.0,
                ),
                labelText:'PASSWORD',                          
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){},
                  child: Text('Forgot Password',
                  style: TextStyle(
                    fontSize:15,
                    fontFamily: 'Proxima Nova',
                    fontWeight: FontWeight.w900,
                    color:Colors.green,
                  ),
                  textAlign:TextAlign.right,),
                ),
              ],
            ),
            SizedBox(
              height:30,
            ),
            Center(
              child: RaisedButton(                
                padding: EdgeInsets.fromLTRB(width*0.37, 20, width*0.37, 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                color:Colors.green,              
                onPressed:(){},
                child:Text('LOGIN',
                textAlign: TextAlign.center,            
                style:TextStyle(
                  color:Colors.white,       
                  letterSpacing:2.0,         
                  fontFamily:'Proxima Nova',
                  fontWeight: FontWeight.bold,              
                ),),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: RaisedButton(                
                padding: EdgeInsets.fromLTRB(width*0.18, 18,width*0.1, 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                color:Colors.blue,              
                onPressed:(){},
                child:Center(
                  child: Row(
                    children: [
                      Icon(Icons.add_to_home_screen,
                      color:Colors.white,),
                      
                      Text(' LOGIN WITH FACEBOOK',
                  textAlign: TextAlign.center,            
                  style:TextStyle(
                    color:Colors.white,       
                    letterSpacing:2.0,         
                    fontFamily:'Proxima Nova',
                    fontWeight: FontWeight.bold,              
                  ),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                  'New to Spotify?',
                  style:TextStyle(
                    fontFamily: 'Proxima Nova',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                InkWell(                  
                  onTap :(){
                    Navigator.push(context,new MaterialPageRoute(
                      builder: (BuildContext context) =>new SignUp()));                    
                  },
                  child:Text(
                  'Register',          
                  style:TextStyle(
                    color: Colors.green,
                    fontFamily: 'Proxima Nova',
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                  ),
                ),
                ),],
              ),          
          ],),
        ),
    );
  }      
}