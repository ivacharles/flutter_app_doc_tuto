import 'package:flutter/material.dart';
import 'package:flutter_app_doc_tuto/src/players.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageView(),
    );
  }
}

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
    String _imgPath = 'images/pict_placeholder.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Tennis Players\' Stats', style: TextStyle(color: Colors.amber)),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Container(
            height: 220,
            child: Image.asset(_imgPath, width: 600, height: 220, fit: BoxFit.cover),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: Text('Click on any player\'s row to see his picture',  textAlign: TextAlign.center , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25)),
              ),

              Container(
                width: 350,
                padding: EdgeInsets.fromLTRB(0.0,10.0,0.0,10.0),
                color: Colors.lightBlue,
                child: Row(
                  children: [
                    Expanded(flex:3, child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.6)),),
                    Expanded(flex:2, child: Text('Country', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.6)),),
                    Expanded(child: Text('# Title', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.6)))
                  ],
                ),
              ),

              Container(
                width: 350,
                height: 350,
                padding: EdgeInsets.fromLTRB(0.0,15.0,0.0,15.0),
                child: ListView.separated(
                    separatorBuilder: ( context, int index) => const Divider(height:30,color: Colors.lightBlue, thickness: 5.0,),
                    itemCount: players.length,
                    itemBuilder: (context, index){
                      return GestureDetector(
                          onTap: (){
                            _showPlayerTennisImg(players.elementAt(index).pict);
                          },
                          child: Row(
                            children: <Widget> [

                              Expanded( flex:3, child: Text(players.elementAt(index).name, style: TextStyle(color: Colors.black87, fontSize: 17.6)),),
                              Expanded(flex:2, child: Text(players.elementAt(index).country, style: TextStyle(color: Colors.black87, fontSize: 17.6)),),
                              Expanded(child: Text(players.elementAt(index).title, style: TextStyle(color: Colors.black87, fontSize: 17.6)),),
                            ],
                          )
                      );
                    }
                ),
              ),
              Container(
                width: 600,
                height: 100,
                color: Colors.black,
                padding: EdgeInsets.all(20),
                child: Text('Design by Iva Lesperance Charles', textAlign: TextAlign.center , style: TextStyle(color: Colors.amber)),
              )
            ],
          )
        ],
      )
    );
  }

  void _showPlayerTennisImg(String pictPath) {
    setState(() {
      _imgPath = pictPath;
    });
  }

}
