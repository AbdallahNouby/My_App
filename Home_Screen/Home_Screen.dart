import 'package:carousel_slider/carousel_slider.dart';
import 'package:course/Description_Movies/Description_Movie.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSection);
    super.initState();
  }

  _handleTabSection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Movies Stream"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
                height: 200,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8),
            items: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage("assets/images/upcoming1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage("assets/images/upcoming2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage("assets/images/upcoming3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage("assets/images/upcoming4.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          TabBar(
            unselectedLabelColor: Colors.white,
            isScrollable: true,
            indicator: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            labelPadding: EdgeInsets.all(10),
            controller: _tabController,
            tabs: [
              Tab(text: "All"),
              Tab(text: "Action"),
              Tab(text: "Comedy"),
              Tab(text: "Drama"),
            ],
          ),
          SizedBox(height: 30),
          Center(
            child: [
              DescriptionMovie(),
              Container(),
              Container(),
              Container(),
            ][_tabController.index],
          ),
        ],
      ),
    );
  }
}
