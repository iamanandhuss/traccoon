// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traccoon/utils/colors.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => NotificationsPage();
}

class NotificationsPage extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        notificationcard(
            context,
            whitemodeColor["whiteshade1"],
            whitemodeColor["greenshade8"],
            "Hey! Bus no. 2 is 1km away from you",
            "1 sec ago",0),
        notificationcard(
            context,
            whitemodeColor["white"],
            whitemodeColor["greenshade8"],
            "Bus no.1 has been canceled due to technical problem",
            "1 sec ago",1),
      ],
    ));
  }

  Widget notificationcard(
      context, Color color1, Color color2, String label1, String label2,int value) {
    return Slidable(
      key:  ValueKey(value),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          SlidableAction(
            flex: 1,
            // ignore: avoid_types_as_parameter_names
            onPressed: (BuildContext) {},
            backgroundColor: whitemodeColor["red"],
            foregroundColor: whitemodeColor["white"],
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
            child: Container(
              decoration: BoxDecoration(color: color1),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        bottom: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.width * 0.04),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: color2,
                      child: SvgPicture.asset(
                        "assets/bus.svg",
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.05,
                              right: MediaQuery.of(context).size.width * 0.03),
                          child: Text(
                            label1,
                            textAlign: TextAlign.start,
                            maxLines: 3,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.05,
                              top: MediaQuery.of(context).size.height * 0.009,
                            ),
                            child: Text(
                              label2,
                              textAlign: TextAlign.start,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
