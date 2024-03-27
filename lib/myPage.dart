import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qing/myPage_setting.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SettingButton(),
            MyInfo(
              userName: 'Name Surname',
              userId: '@benben',
            ),
            Divider(
              height: 2, // 선의 두께
              color: Colors.grey, // 선의 색상
            ),
            Titles(),
            Divider(
              height: 2, // 선의 두께
              color: Colors.grey, // 선의 색상
            ),
            Introduction(),
            FeedList(),
          ],
        ),
        //backgroundColor: Colors.red,
      ),
    );
  }
}

class SettingButton extends StatelessWidget {
  const SettingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: IconButton(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        icon: Icon(CupertinoIcons.settings, size: 30, color: Colors.grey),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyPage_Setting(),
            ),
          );
        },
      ),
    );
  }
}

class MyInfo extends StatelessWidget {
  final String userName;
  final String userId;

  const MyInfo({
    required this.userName,
    required this.userId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
        width: 120,
        height: 120,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Center(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_rounded,
                size: 30,
                color: Colors.grey,
              ),
            )),
      ),
      Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
        child: Center(
            child: Text(userName,
                style: GoogleFonts.notoSans(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ))),
      ),
      Container(
        width: double.infinity,
        child: Center(
            child: Text(userId,
                style: GoogleFonts.notoSans(
                  color: Colors.grey,
                  fontSize: 17,
                ))),
      ),
      Container(
        width: double.infinity,
        child: Center(
          child: TextButton(onPressed: () {}, child: Text('프로필 수정하기',
              style: GoogleFonts.notoSans(
                color: Colors.black,
                fontSize: 17,
              ))),
        ),
      )],
      ),
    );
  }
}

//무슨 기능인 지 몰라 일단 공간만 만들어뒀어요
class Titles extends StatelessWidget {
  const Titles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(fontSize: 17),
              ),
              Text(
                'SubTitle',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(fontSize: 17),
              ),
              Text(
                'SubTitle',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(fontSize: 17),
              ),
              Text(
                'SubTitle',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(fontSize: 17),
              ),
              Text(
                'SubTitle',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {},
            icon: Icon(Icons.navigate_next_rounded, color: Colors.grey))
      ],
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: TextButton(
                onPressed: () {},
                child: Text('소개',
                    style: GoogleFonts.notoSans(
                      color: Colors.black,
                      fontSize: 17,
                    ))),
          ),
        ),
        Spacer(),
        Spacer(),
        Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: TextButton(
                onPressed: () {},
                child: Text('수정하기',
                    style: GoogleFonts.notoSans(
                      color: Colors.black,
                      fontSize: 17,
                    ))),
          ),
        ),
      ],
    );
  }
}

final feedItems = List.generate(50, (index) => Colors.grey.shade300);

class FeedList extends StatelessWidget {
  const FeedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: feedItems.map((color) => Container(color: color)).toList(),
    );
  }
}
