import 'package:financeappui/datas/subscriptions.dart';
import 'package:flutter/material.dart';

class SubscriptionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      //color: Colors.green,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: subscriptionsList.length,
          itemBuilder: (context, index) {
            var item = subscriptionsList[index];
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 15.0),
                  child: Container(
                    width: 130,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.01),
                            spreadRadius: 0.001,
                            blurRadius: 10,
                            offset: Offset(0, 0),
                          )
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.white,
                              Colors.white.withOpacity(0.3),
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 14.0, top: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                child: Image.asset(item["logo"]),
                              ),
                              SizedBox(height: 10),
                              Text(
                                item["name"],
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 14.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '\$${item['price']}',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  '/',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.3),
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  'mo',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.3),
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
