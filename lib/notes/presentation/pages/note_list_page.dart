import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:note_taker/core/asset_constant.dart';
import 'package:note_taker/notes/presentation/pages/add_note_page.dart';
import 'package:note_taker/notes/presentation/widgets/app_button.dart';

class NoteListPage extends StatefulWidget {
  const NoteListPage({super.key});
  static const String routeName = '/noteListPage';

  @override
  State<NoteListPage> createState() => _NoteListPageState();
}

class _NoteListPageState extends State<NoteListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Notes"),
        actions: [
          AppButton(
            iconPath: AssetConstant.searchIconSvg,
            onpress: () {},
          ),
          SizedBox(width: 16),
          AppButton(
            iconPath: AssetConstant.infoIconSvg,
            onpress: () {},
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AssetConstant.emptyNotesImg),
            Text(
              "Create your first note !",
              style:
                  Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddNotePage.routeName);
        },
        elevation: 16.0,
        child: SvgPicture.asset(
          AssetConstant.addIconSvg,
        ),
      ),
    );
  }
}
