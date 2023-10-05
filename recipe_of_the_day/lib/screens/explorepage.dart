import 'package:flutter/material.dart';
import 'package:recipe_of_the_day/model/comments_model.dart';

class ExplorePage extends StatelessWidget {
  final comments = Comments.generatedCommentList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Of the Day'),
        centerTitle: true,
        elevation: 10,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                // height: 900,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recipe Of the Day ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Stack(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/1070893/pexels-photo-1070893.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Editor's Choice",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "The Art of Cake",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          right: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Learn to make the perfect cake",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Revon Die chi",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 10),
              // Expanded(
              //   child: ListView.separated(
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) {
              //       return ListTile(
              //         leading: CircleAvatar(
              //           child: Image.network(comments[index].logoUrl),
              //         ),
              //         title: Text(comments[index].comment),
              //         subtitle: Text(comments[index].fullTime),
              //       );
              //     },
              //     separatorBuilder: (_, index) => SizedBox(height: 10),
              //     itemCount: comments.length,
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  // 4
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Image.network(comments[index].logoUrl),
                        ),
                        title: Text(comments[index].comment),
                        subtitle: Text(comments[index].fullTime),
                      ),
                    );
                  },
                  separatorBuilder: (_, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: comments.length)
            ]),
          ),
        ),
      ),
    );
  }
}
