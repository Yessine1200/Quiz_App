import 'package:flutter/material.dart';
import 'screen1.dart';

class WelcomePage extends StatelessWidget {

  void selectPage(BuildContext context){
    Navigator.of(context).pushNamed(FirstScreen.routeName);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
            )
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            // sur toute la ligne
            children: <Widget>[

              Padding(
                padding:  EdgeInsets.only(top: 50),
                child: Image.asset(
                  "assets/logo1.png", cacheWidth: 350,
                ),
              ),
              Container(
                height: 50.0,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed:()=>selectPage(context),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),

                  ),

                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color.fromRGBO(77, 57, 0, 1), Color.fromRGBO(204, 153, 0, 1)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                      BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Time To Play",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 100, left: 70)),
              Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left:50)),

                    Column(
                        children: <Widget>[
                          Text("IEEE CS Chapter    ",
                            style: TextStyle(fontSize: 16,
                              color: Color.fromRGBO(51, 38, 0, 1),
                              fontWeight: FontWeight.bold,),),
                          //RaisedButton(onPressed: NavigateToData_Base)
                          SizedBox(
                            height: 10,
                            //width: ,
                          ),
                          Text(" SUP'COM Student Branch    ",
                            style: TextStyle(fontSize: 16,
                              color: Color.fromRGBO(51, 37, 0, 1),
                              fontWeight: FontWeight.bold,),),
                        ]
                    ),
                    ClipOval(
                      child: Image.asset(
                        'assets/logo.png',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),



                  ]
              )


            ]),
      ),
    );


  }


/*void getScreen1() {
    Navigator.push(context, MaterialPageRoute(builder:(context)=> FirstScreen()));
  }*/
  }




