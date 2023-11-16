import 'package:flutter/material.dart';
import 'package:machinetest/design1.dart';
import 'package:machinetest/modelclass.dart';

class DesignTwo extends StatefulWidget {
  const DesignTwo({Key? key}) : super(key: key);

  @override
  State<DesignTwo> createState() => _DesignTwoState();
}

class _DesignTwoState extends State<DesignTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DesignOne(),));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 24, 123, 204),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'スタンプカード詳細',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'NotoSansJP',
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.remove_circle_outline,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 35, left: 12),
                          child: Text(
                            'Mer キッチン',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35, right: 12),
                          child: Text(
                            '現在の獲得数 30 個',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
           Card(
  margin: EdgeInsets.all(16),
  child: Container(
    width: double.maxFinite,
    height: 199,
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.star, size: 40, color: Colors.orange),
            Icon(Icons.star, size: 40, color: Colors.orange),
            Icon(Icons.star, size: 40, color: Colors.orange),
            Icon(Icons.star, size: 40, color: Colors.orange),
            Icon(Icons.star, size: 40, color: Colors.orange),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.star, size: 40, color: Colors.orange),
            Icon(Icons.star, size: 40, color: Colors.orange),
            Icon(Icons.star, size: 40, color: Colors.orange),
            Icon(Icons.star, size: 40, color: Colors.orange),
            Icon(Icons.star, size: 40, color: Colors.orange),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.star, size: 40, color: Colors.orange),
            Icon(Icons.star, size: 40, color: Colors.orange),
            Icon(Icons.star, size: 40, color: Colors.orange),
            Icon(Icons.star, size: 40, color: Colors.orange),
            Icon(Icons.star, size: 40, color: Colors.orange),
          ],
        ),
      ],
    ),
  ),
),


            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13, top: 20),
                      child: Text(
                        'スタンプ獲得履歴',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 13),
                      child: Text(
                        '2 / 2枚目',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
                ListView.separated(
  shrinkWrap: true,
  itemCount: 4,
  separatorBuilder: (BuildContext context, int index) {
    return Divider(height: 1,);
  },
  itemBuilder: (BuildContext context, int index) {
    ListItemModel item = generateListItems()[index];

    return ListTile(
      title: Text(item.title),
      subtitle: Text(item.subtitle),
      trailing: Text(item.trailing),
    );
  },
)

              ],
            ),
          ],
        ),
      ),
    );
  }
}
