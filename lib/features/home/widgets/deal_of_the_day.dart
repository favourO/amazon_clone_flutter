import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({Key? key}) : super(key: key);

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Deal of the day',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Image.network(
          'https://images.unsplash.com/photo-1551645120-d70bfe84c826?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bW9uaXRvcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          alignment: Alignment.topLeft,
          child: Text('\$100',
          style: TextStyle(
            fontSize: 18
          ),),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text(
            'Favour',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network('https://images.unsplash.com/photo-1676738386453-4785abee2d39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aXBob25lJTIwMTR8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60', fit: BoxFit.fitWidth, width: 100, height: 100,),
              Image.network('https://images.unsplash.com/photo-1676738386453-4785abee2d39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aXBob25lJTIwMTR8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60', fit: BoxFit.fitWidth, width: 100, height: 100),
              Image.network('https://images.unsplash.com/photo-1676738386453-4785abee2d39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aXBob25lJTIwMTR8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60', fit: BoxFit.fitWidth, width: 100, height: 100),
              Image.network('https://images.unsplash.com/photo-1676738386453-4785abee2d39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aXBob25lJTIwMTR8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60', fit: BoxFit.fitWidth, width: 100, height: 100),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
              vertical: 15
          ).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(
              color: Colors.cyan[800],
            ),
          ),
        )
      ],
    );
  }
}
