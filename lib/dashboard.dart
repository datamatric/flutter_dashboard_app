import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  Material MyItems(IconData icon,String heading,int color){
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(heading,
                    style: TextStyle(
                      color: new Color(color),
                      fontSize: 20.0,
                    ),
                    ),
                  ),

                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),


                ],
              )
            ],
          ),

        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Example',
            style: TextStyle(
              color: Colors.white,
            ),
        ),
      ),
      body: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),

        children: <Widget>[
          MyItems(Icons.graphic_eq,"TotalViews",0xffed622b),
          MyItems(Icons.graphic_eq,"TotalViews",0xffed622b),
          MyItems(Icons.graphic_eq,"TotalViews",0xffed622b),
          MyItems(Icons.graphic_eq,"TotalViews",0xffed622b),
          MyItems(Icons.graphic_eq,"TotalViews",0xffed622b),
          MyItems(Icons.graphic_eq,"TotalViews",0xffed622b),
          MyItems(Icons.graphic_eq,"TotalViews",0xffed622b),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2,130.0),
          StaggeredTile.extent(1,150.0),
          StaggeredTile.extent(1,150.0),
          StaggeredTile.extent(2,130.0),
          StaggeredTile.extent(1,130.0),
          StaggeredTile.extent(1,130.0),
          StaggeredTile.extent(1,130.0),
        ],
      ),
    );
  }


}
