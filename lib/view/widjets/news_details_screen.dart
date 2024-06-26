import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen(
      {super.key,
        required this.title,
        required this.description,
        this.date,
        required this.imageUrl,
        required this.contant,
        required this.sourceName,
        required this.url});
  final String title;
  final String description;
  final DateTime? date;
  final String imageUrl;
  final String contant;
  final String sourceName;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xffde1111), size: 30),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Container(
              height: MediaQuery.sizeOf(context).height * 40 / 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(imageUrl), fit: BoxFit.cover)),
            ),SizedBox(height: 20),
              Text(
                title,
                style:
                const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      "$sourceName | ${DateFormat('dd/MM/yyyy').format(date!).toString()}")
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              Text(
                "$description",
                style:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Text(
                  "$contant",
                  style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // Provider.of<HomeScreenController>(context, listen: false)
                  //     .launchURL(url);
                },
                child: const Text(
                  "Click heare to Read more",
                  style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}