import 'package:financeappui/datas/friends.dart';
import 'package:flutter/material.dart';

class FriendsMoneyWidget extends StatelessWidget {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      //color: Colors.red,
      child: ListView.builder(
          itemCount: friendsList.length,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            var friendIndex = friendsList[index];
            return GestureDetector(
              onTap: () {
                print('send money');
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    )),
                    isScrollControlled: true,
                    backgroundColor: Colors.white,
                    enableDrag: true,
                    barrierColor: Colors.black.withOpacity(0.2),
                    context: context,
                    builder: (BuildContext c) {
                      return Container(
                        height: 400,
                        child: Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 40),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        friendIndex['profileUrl'],
                                        width: 48,
                                      ),
                                      SizedBox(width: 20),
                                      Text(
                                        friendIndex['name'],
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '\$1,300',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Comission: 1\$',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.3),
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            StatefulBuilder(
                              builder: (context, setState) {
                                return Slider(
                                  value: _currentSliderValue,
                                  min: 0,
                                  max: 100,
                                  inactiveColor: Color(0xffE0E3E9),
                                  activeColor: Color(0xff4FE49D),
                                  label: _currentSliderValue.round().toString(),
                                  onChanged: (double value) {
                                    // _currentSliderValue = value;
                                    setState(() {
                                      _currentSliderValue = value;
                                    });
                                  },
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 15),
                              child: Container(
                                height: 65,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.02),
                                        spreadRadius: 20,
                                        blurRadius: 10,
                                        offset: Offset(0, 0),
                                      )
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(17.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/mastercard.png',
                                            width: 48,
                                          ),
                                          SizedBox(width: 12),
                                          Text(
                                            '****',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                          Text(
                                            '9354',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                            ),
                                          )
                                        ],
                                      ),
                                      Image.asset(
                                        'assets/images/down-icon.png',
                                        width: 16,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 40),
                              child: Container(
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.black,
                                ),
                                child: Center(
                                  child: Text(
                                    'Send Money',
                                    style: TextStyle(
                                      fontFamily: 'Avenir',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 15),
                child: Column(
                  children: [
                    Image.asset(
                      friendIndex["profileUrl"],
                      width: 56,
                    ),
                    SizedBox(height: 10),
                    Text(
                      friendIndex["name"],
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
