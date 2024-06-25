import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:promiloapp/utility/botom_bar_section.dart';
import 'package:share_plus/share_plus.dart';

class DescriptionPage extends StatefulWidget {
  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  final meetUpImage = [
    "https://plus.unsplash.com/premium_photo-1661299252549-60847804b646?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1543269865-cbf427effbad?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1559136656-3db4bf6c35f8?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1683140881715-a160d81e1b7d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1600880292203-757bb62b4baf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1573496546038-82f9c39f6365?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Description'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        titleSpacing: -10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 205, 204, 199),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: AnotherCarousel(
                        borderRadius: true,
                        noRadiusForIndicator: false,
                        images: meetUpImage
                            .map((url) => NetworkImage(url))
                            .toList(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.file_download)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.bookmark_border_outlined)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border_outlined)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.crop_free)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.star_border_outlined)),
                        IconButton(
                          onPressed: () {
                            Share.share(
                                'check out my website https://example.com');
                          },
                          icon: const Icon(Icons.share),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // like
              Row(
                children: [
                  const Icon(Icons.bookmark_border_outlined),
                  const SizedBox(width: 8),
                  const Text("1034"),
                  const SizedBox(width: 8),
                  const Icon(Icons.favorite_border_outlined),
                  const SizedBox(width: 8),
                  const Text("1034"),
                  const SizedBox(width: 15),
                  Container(
                    height: 25,
                    width: 140,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 205, 204, 199),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.cyan[300]),
                        Icon(Icons.star, color: Colors.cyan[300]),
                        Icon(Icons.star, color: Colors.cyan[300]),
                        Icon(Icons.star, color: Colors.cyan[300]),
                        const Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Text("3.2")
                ],
              ),
              // actor name
              const SizedBox(height: 20),
              const Text(
                "Actor Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 8),
              const Text("Indian Actor"),
              const SizedBox(height: 20),
              const Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.av_timer_sharp),
                      SizedBox(height: 20),
                      Text("Duration 20 Mins"),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Icon(Icons.wallet_travel_rounded),
                  SizedBox(height: 20),
                  Text("Total Average Fees \$9,999"),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              const Text(
                "From cardiovascular helth to fitness, flexibility,balance,stress relief,better sleeep,incressed cognitive performance,and more you can rap all of these benefits in just one session out on the waves. So, yu may find yourself wondering what are the benefit of going on a surf camp.",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: const Text("See More"))
                ],
              )
            ],
          ),
        ),
      ),
      //
      bottomNavigationBar: const BottomBarSection(),
    );
  }
}
