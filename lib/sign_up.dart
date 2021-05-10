import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> { 
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
            children: [
            Text(
              'Sign',
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
              'Up',
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
            TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontFamily:'Proxima Nova',
                  fontWeight: FontWeight.w600,
                  fontSize:15,
                  letterSpacing:3.0,
                ),
                labelText:'NICKNAME',
              ),
              keyboardType: TextInputType.text,
            ),                        
            SizedBox(
              height:70,
            ),
            Center(
              child: RaisedButton(                
                padding: EdgeInsets.fromLTRB(width*0.36, 20, width*0.36, 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                color:Colors.green,              
                onPressed:(){},
                child:Text('SIGNUP',
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
                padding: EdgeInsets.fromLTRB(130, 18, 120, 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                color:Colors.blue,              
                onPressed:(){
                  Navigator.pop(context);
                },
                child:Row(
                  children: [
                    Icon(Icons.arrow_back,
                    color:Colors.white,),
                    
                    Text(' GO BACK',
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
                     ],),
        ),
    );
  }      
}