import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machinetest/design2.dart';


class DesignOne extends StatefulWidget {
  const DesignOne({Key? key}) : super(key: key);

  @override
  State<DesignOne> createState() => _DesignOneState();
}

class _DesignOneState extends State<DesignOne> {
  Color orangeColor = const Color.fromARGB(255, 250, 153, 20);
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 33.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.5),
                    color: Color.fromARGB(255, 196, 191, 191),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '北海道, 札幌市',
                      hintStyle: TextStyle(color: const Color.fromRGBO(0, 0, 0, 1)),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  // Add your filter functionality
                },
                icon: Icon(Icons.tune_outlined, size: 30,),
              ),
              IconButton(
                icon: Icon(Icons.favorite_outline, color: Colors.red, size: 30,),
                onPressed: () {
                  // Implement favorite/heart icon functionality
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 33.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.amber, Colors.orange[200]!],
                  ),
                ),
                child: const Center(
                  child: Text(
                    '2022年 5月 26日（木）',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 100,
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.black,
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    // New date selected
                    // setState(() {
                    //   _selectedValue = date;
                    // });
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(6.0),
                height: MediaQuery.of(context).size.height * 0.75,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                   ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                      child: const ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        child: Image(
                          image: AssetImage(
                              'assets/images/image1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.maxFinite,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.6, 0.6),
                                blurRadius: 6.0
                              )
                            ],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                          ),
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "介護有料老人ホームひまわり倶楽部の介護職",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text('ルパー求人（パート／バイト）',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.amber.shade100,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          "介護付き有料老人ホーム",
                                          style: TextStyle(
                                              color: Colors.amber,
                                              fontSize: 10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text("¥ 6,000",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text("5月 31日（水）08 : 00 ~ 17 : 00"),
                              ),
                              const Text("北海道札幌市東雲町3丁目916番地17号"),
                              const Text('交通費 300円'),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text('住宅型有料老人ホームひまわり倶楽部',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'NotoSansJP')),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DesignTwo(),));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: const Text('Next Page'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.search, color: Colors.black),
      label: 'さがす',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.work_history, color: Colors.black),
      label: 'お仕事',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.comment_bank_rounded, color: Colors.black,),
      label: 'チャット',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_2_outlined, color: Colors.black,),
      label: 'マイページ',
    ),
  ],
  currentIndex: _selectedIndex,
  selectedItemColor: Colors.black,
  onTap: (index) {
    setState(() {
      _selectedIndex = index;
    });
  },
  type: BottomNavigationBarType.fixed, // Ensure that labels are shown even if there are more than 3 items
),

    );
  }
}