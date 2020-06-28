import 'package:findrecycler/app_level/services/image_picker.dart';
import 'package:flutter/material.dart';

import '../app_level/styles/colors.dart';
import '../app_level/utilities/screen_size.dart';

class AddFacilityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Facility'),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 20),
        child: RaisedButton.icon(
          color: Theme.of(context).accentColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          textTheme: ButtonTextTheme.primary,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          onPressed: () {},
          icon: Icon(Icons.add_circle),
          label: Text(
            'Add This Facility'.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 0.2,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            //PHOTO TITLE
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Facility Photo',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),

            //IMAGE CARD
            GestureDetector(
              onTap: () async {
                final _img = await ImagePickerService.getImage();
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: AppColors.backgroundGrey,
                  alignment: Alignment.center,
                  height:
                      ScreenQueries.instance.customHeightPercent(context, 0.25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_photo_alternate,
                        size: ScreenQueries.instance
                            .customHeightPercent(context, 0.15),
                        color: Colors.grey,
                      ),
                      Text(
                        'Tap to select or take a picture',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 8,
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.backgroundGrey,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Name of Facility',
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(
              height: 8,
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.backgroundGrey,
                borderRadius: BorderRadius.circular(5),
              ),
              height: ScreenQueries.instance.customHeightPercent(context, 0.15),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Facility Address',
                  alignLabelWithHint: false,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.backgroundGrey,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Facility Type',
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
