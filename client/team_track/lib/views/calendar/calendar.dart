import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:team_track/utils/colors.dart';
import 'package:team_track/utils/enums.dart';

import '../../styles/my_styles.dart';
import 'controllers/calendar_controller.dart';

class Calendar extends StatelessWidget {
  Calendar({super.key});

  final MyCalendarController _controller = Get.put(MyCalendarController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.topRight,
            child: Obx(() {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () =>
                        _controller
                            .changeDisplayCalendar(DisplayCalendar.month),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                      decoration: BoxDecoration(
                          color: (_controller.displayCalendar ==
                              DisplayCalendar.month)
                              ? MyColors.primaryColor
                              : null,
                          border: Border.all(color: Colors.black12)),
                      child: Text(
                        'Month',
                        style: (_controller.displayCalendar ==
                            DisplayCalendar.month)
                            ? MyStyles.selectedCalendarDisplay
                            : MyStyles.boldText,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        _controller.changeDisplayCalendar(DisplayCalendar.week),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                      decoration: BoxDecoration(
                          color: (_controller.displayCalendar ==
                              DisplayCalendar.week)
                              ? MyColors.primaryColor
                              : null,
                          border: Border.all(color: Colors.black12)),
                      child: Text(
                        'Week',
                        style: (_controller.displayCalendar ==
                            DisplayCalendar.week)
                            ? MyStyles.selectedCalendarDisplay
                            : MyStyles.boldText,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        _controller.changeDisplayCalendar(DisplayCalendar.day),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                      decoration: BoxDecoration(
                          color: (_controller.displayCalendar ==
                              DisplayCalendar.day)
                              ? MyColors.primaryColor
                              : null,
                          border: Border.all(color: Colors.black12)),
                      child: Text(
                        'Day',
                        style:
                        (_controller.displayCalendar == DisplayCalendar.day)
                            ? MyStyles.selectedCalendarDisplay
                            : MyStyles.boldText,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
        Expanded(
          child: GetBuilder<MyCalendarController>(
            builder: (logic) {
              return SfCalendar(
                  view: (logic.displayCalendar == DisplayCalendar.month)
                      ? CalendarView.month
                      : (logic.displayCalendar == DisplayCalendar.week)
                      ? CalendarView.week
                      : CalendarView.day,
                dataSource: MeetingDataSource(getAppointments()),
              );
            },
          ),
        ),
      ],
    );
  }
  List<Appointment> getAppointments() {
    List<Appointment> meetings = <Appointment>[];
    final DateTime today = DateTime.now();
    final DateTime startTime = _controller.workday.value.begin ;
    final DateTime endTime = _controller.workday.value.end;

    meetings.add(Appointment(
        startTime: startTime,
        endTime: endTime,
        subject: 'Board Meeting',
        color: Colors.blue,
        recurrenceRule: 'FREQ=DAILY;COUNT=10',
        isAllDay: false));

    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}

/*view: (_controller.displayCalendar == DisplayCalendar.month)
                  ? CalendarView.month
                  : (_controller.displayCalendar == DisplayCalendar.week)
                  ? CalendarView.week
                  : CalendarView.day,*/
