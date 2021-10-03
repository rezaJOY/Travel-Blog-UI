import 'package:flutter/material.dart';
import 'package:travel_ui/model/travel.dart';

class TravelBlog extends StatelessWidget {


  final _list = Travel.generateTravelBlog();   //connection with travel.dart
  final _pgCtrl = PageController(viewportFraction: 0.9);    //image ratio


  @override
  Widget build(BuildContext context) {

    return PageView.builder(    //multiple value build is used in pageView.builder
      controller: _pgCtrl,
      physics: BouncingScrollPhysics(),
      itemCount: _list.length,
      itemBuilder: (context, index){    //context=location, index=data passes
        var travel = _list[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20, bottom: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child:  Image.asset(travel.url,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width),
              ),
            ),

            Positioned(
              bottom: 15,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    travel.name,
                    style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.normal,
                      color: Colors.white
                    ),
                  ),

                  Text(
                    travel.location,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            
            Positioned(
              bottom: 0, right: 45,
              child: Container(
                height: 60, width: 60,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(Icons.arrow_forward, color: Colors.white,size: 30),
              ),
            ),
          ],
        );
      },
    );
  }
}
