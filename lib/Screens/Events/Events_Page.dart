import 'package:edumarshals/Model/Event_Model.dart';
import 'package:edumarshals/Widget/CustomAppBar.dart';
import 'package:edumarshals/Widget/Event_Custom_Widget.dart';
import 'package:edumarshals/main.dart';
import 'package:edumarshals/repository/Event_Repository.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 246, 255, 1),
      appBar: CustomAppBar(userName: PreferencesManager().name,),
      body: 
      FutureBuilder<List<EventModel>>(
        future: EventRepository().fetchEvents(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            List<EventModel>? events = snapshot.data;
            return ListView.builder(
              itemCount: events?.length ?? 0,
              itemBuilder: (context, index) {
                EventModel event = events![index];
                return ListTile(
                  title: EventCustomWidget(eventName:event.eventName, description: event.detail, societyName: event.hostingOrganization, departmentName: event.registrationUrl, price: event.date, daysLeft: event.event, registrationUrl: event.registrationUrl,),
                  onTap: () {
                    // Handle event tap
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}