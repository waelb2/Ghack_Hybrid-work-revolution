

import 'package:flutter/material.dart';
import 'package:team_track/utils/colors.dart';
import 'package:team_track/utils/enums.dart';

import '../my_employees.dart';

class StatusWidget extends StatefulWidget {
  Status status;
  StatusWidget({required this.status});

  @override
  State<StatusWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade400,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(widget.status.name),
          const SizedBox(
            width: 6,
          ),
          Icon(
            Icons.circle,
            size: 10,
            color:
                (widget.status== Status.ON_SITE) ? MyColors.onSiteOrange : MyColors.remoteGreen,
          ),
        ],
      ),
    );
  }
}
