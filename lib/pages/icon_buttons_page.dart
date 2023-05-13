import 'package:flutter/material.dart';
import 'package:material_widget/constants/coloors.dart';

class IconButtonsPage extends StatelessWidget {
  const IconButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Coloors.iconButtonsSecondaryColor,
        surfaceTintColor: Coloors.iconButtonsSecondaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_sharp,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              color: Coloors.iconButtonsSecondaryColor,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Column(
                children: [
                  FavoriteCard(),
                  SizedBox(
                    height: 15,
                  ),
                  FavoriteCard(),
                  SizedBox(
                    height: 15,
                  ),
                  FavoriteCard(),
                  SizedBox(
                    height: 15,
                  ),
                  FavoriteCard(),
                  SizedBox(
                    height: 15,
                  ),
                  FavoriteCard(),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Coloors.iconButtonsBgColor,
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 150,
                height: 180,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.zero,
                    topRight: Radius.zero,
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://picsum.photos/id/129/1000/1000",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(
                        Icons.favorite_border,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Baking for a whole mess of a people without making a mess",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Got a big gathering coming up or are you considering a do-it-yourself baked goods delivery service? Follow along as I show you how to avoid those mistake very easily",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 18,
                            backgroundImage: NetworkImage(
                              "https://picsum.photos/id/239/1000/1000",
                            ),
                          ),
                          SizedBox(width: 12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ancient Meal Ticket",
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                              Text(
                                "15.1K subcribers",
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark_outline,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
