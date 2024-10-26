import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  const url =
      'https://images.pexels.com/photos/1359312/pexels-photo-1359312.jpeg';
  return Card(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        const ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(url)),
          title: Text('Elgato'),
          subtitle: Text('Anggora'),
          trailing: Icon(Icons.arrow_right),
        ),
        // Content
        Image.network(
          'https://images.pexels.com/photos/12096980/pexels-photo-12096980.jpeg?auto=compress&cs=tinysrgb&w=600',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.8,
          fit: BoxFit.cover,
        ),
        // Footer
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.favorite_border),
                    onPressed: () {
                      // Like button action
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.comment),
                    onPressed: () {
                      // Comment button action
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {
                      // Share button action
                    },
                  ),
                ],
              ),
              const Icon(Icons.bookmark_border),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '6,666 likes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    'Elgato',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      'This is My Hooman',
                      overflow: TextOverflow.ellipsis,
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