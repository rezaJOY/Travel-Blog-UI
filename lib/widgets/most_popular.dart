import 'package:flutter/material.dart';
import 'package:travel_ui/model/travel.dart';
class MostPopular extends StatelessWidget {
  final _list = Travel.mostPopular();

  final _pgCtrl = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(  //pageView.builder and list view seperated same function
    controller: _pgCtrl,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index){
        var travel = _list[index];
        return Stack(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10,bottom: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child:  Image.asset(travel.url,
                    fit: BoxFit.cover,
                    width: 150,
                ),
              ),
            ),

            Positioned(
             bottom: 75,
              left: 20,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    travel.name,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.normal,
                        color: Colors.white
                    ),
                  ),

                  Text(
                    travel.location,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),



          ],
        );
      },
      separatorBuilder: (_,index)=>SizedBox(width: 15),
      itemCount: _list.length,

    );
  }
}
