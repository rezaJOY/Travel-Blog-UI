import 'package:flutter/material.dart';
import 'package:travel_ui/model/travel.dart';
import 'package:travel_ui/widgets/most_popular.dart';
import 'package:travel_ui/widgets/travel_blog.dart';

// development will be in stateful
// design will be in stateless
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.menu, color: Colors.black,),
          ),
        ],
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12.0, bottom: 10),
            child: Text(
              'Travel Blogs',
              style: TextStyle(fontSize: 35),
            ),
          ),
          Expanded(
            flex: 3,
            child: TravelBlog(),
          ),


          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Most Popular',style: TextStyle(
                  fontSize: 20),
                ),

                Text('View All',style: TextStyle(
                    fontSize: 17, color: Colors.deepOrangeAccent)
                ),
              ],
            ),
          ),

          Expanded(
            flex: 2,
            child: MostPopular(),
          ),


        ],
      ),
    );
  }
}
