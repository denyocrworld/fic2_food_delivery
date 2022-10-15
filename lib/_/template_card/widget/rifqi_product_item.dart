import 'package:flutter/material.dart';

class RifqiProductItem extends StatefulWidget {
  const RifqiProductItem({
    Key? key,
  }) : super(key: key);

  @override
  State<RifqiProductItem> createState() => _RifqiProductItemState();
}

class _RifqiProductItemState extends State<RifqiProductItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 11),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160.0,
            width: 160.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1630384060421-cb20d0e0649d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpZXN8ZW58MHx8MHx8&w=1000&q=80",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  16.0,
                ),
                topRight: Radius.circular(
                  16.0,
                ),
              ),
            ),
            child: Stack(
              children: const [
                Positioned(
                  top: 6,
                  right: 6,
                  child: CircleAvatar(
                    radius: 12.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Organic Bananas",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                const Text(
                  "7pcs, Price:",
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "\$14",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange[300],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          size: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
