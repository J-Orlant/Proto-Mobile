import 'package:flutter/material.dart';
// import 'package:proto/heks_color.dart';

class ProfileUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Container(
          width: 330,
          child: ListView(
            children: <Widget>[
              roundedCard(),
            ],
          ),
        ),
      ),
    );
  }
}

Card roundedCard() {
  return Card(
    margin: EdgeInsets.only(left: 13, top: 80),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Container(
      padding: const EdgeInsets.all(12).copyWith(bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset('images/ryujin3.jpeg'),
                  )),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Joyce Kim',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Hey guys'),
                      Text('Selamat datang guys'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 200.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up),
                  color: Colors.black,
                ),
              ),
              Text(
                '216',
                style: TextStyle(color: Colors.black),
              )
            ],
          )
        ],
      ),
    ),
  );
}

// Container(
//         margin: EdgeInsets.only(left: 30, top: 80),
//         width: 300,
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(24),
//           ),
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.yellow[400],
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Expanded(
//                   flex: 1,
//                   child: Image.asset('images/ryujin5.jpeg'),
//                 ),
//                 Expanded(
//                   flex: 2,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             left: 7,
//                             top: 14,
//                             bottom: 0,
//                           ).copyWith(bottom: 0),
//                           child: Text(
//                             'Joyce Kim',
//                             style: TextStyle(
//                               fontSize: 20,
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             left: 5,
//                             top: 5,
//                           ).copyWith(bottom: 0),
//                           child: Text(
//                             'HeyHey',
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 95),
//                               child: Row(
//                                 children: [
//                                   IconButton(
//                                     onPressed: () {},
//                                     icon: Icon(Icons.thumb_up),
//                                     color: Colors.white,
//                                   ),
//                                   Text(
//                                     '216',
//                                     style: TextStyle(color: Colors.white),
//                                   )
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
