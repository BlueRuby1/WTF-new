import 'package:flutter/material.dart';
import 'package:myfirstwtf_app/widgets/contact_item.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("MediCall"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Icons.search),
            ),
          ],
          leading: Icon(Icons.menu),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: "Map"),
                Tab(text: "List"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Widget for showing map image
                  _buildMapView(),
                  // Widget for showing list view
                  _buildListView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListView() {
    return ListView(
                  children: [
                    ContactItem(),
                    ContactItem(),
                    ContactItem(),
                    ContactItem(),
                    ContactItem(),
                    ContactItem(),
                    ContactItem(),
                    ContactItem(),
                    ContactItem(),
                    ContactItem(),
                    ContactItem(),
                    ContactItem(),
                    ContactItem(),
                    ContactItem(),
                  ],
                );
  }

  Widget _buildMapView() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset(
            "assets/map.png",
            width: MediaQuery.sizeOf(context).width * 0.8,
            height: MediaQuery.sizeOf(context).height * 0.8,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
