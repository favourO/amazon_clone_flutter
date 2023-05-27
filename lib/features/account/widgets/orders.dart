import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/account/widgets/single_product.dart';
import 'package:flutter/cupertino.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

  // temporary list
  List list = [
    'https://images.unsplash.com/photo-1602080858428-57174f9431cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGxhcHRvcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
    'https://images.unsplash.com/photo-1588702547923-7093a6c3ba33?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bGFwdG9wfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    'https://images.unsplash.com/photo-1603302576837-37561b2e2302?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGxhcHRvcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
    'https://images.unsplash.com/photo-1530893609608-32a9af3aa95c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGxhcHRvcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15),
              child: const Text('Your Orders',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),),
            ),
            Container(
              padding: EdgeInsets.only(right: 15),
              child: const Text('See All',
                style: TextStyle(
                  color: GlobalVariables.unselectedNavBarColor
                ),),
            ),

          ],
        ),
        // display orders
        Container(
          height: 170,
          padding: EdgeInsets.only(left: 10, top: 20, right: 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (context, index) {
              return SingleProduct(image: list[index]);
              }),
        )
      ],
    );
  }
}
