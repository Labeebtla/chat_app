import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: const [
          Icon(
            Icons.more_horiz_outlined,
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Expanded(
                        child: RichText(
                            text: const TextSpan(children: [
                      TextSpan(
                          text: 'username\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: 'lastname',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ))
                    ]))),
                    const CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.video_call_rounded,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 50,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return Directionality(
                      textDirection:
                          index.isEven ? TextDirection.rtl : TextDirection.ltr,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  index.isEven ? Colors.black : Colors.green,
                              child: const Icon(Icons.person),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: index.isEven
                                          ? Colors.black
                                          : Colors.green,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'vsadasdchjk',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                            const SizedBox(
                              width: 10,
                            ),
                            const Directionality(
                                textDirection: TextDirection.ltr,
                                child: Text('11:00 AM'))
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
      bottomSheet: TextFormField(
        decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.emoji_emotions_rounded),
            suffixIcon: Icon(Icons.attachment_rounded)),
      ),
    );
  }
}
