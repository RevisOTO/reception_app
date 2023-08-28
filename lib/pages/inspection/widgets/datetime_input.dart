import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:intl/intl.dart';
import 'package:reception_app/globals/constants.dart';
 

class DateTimeInput extends StatelessWidget {
 TextEditingController dateinput;
 final void Function(DateTime,String) callback;
  String title;
 
 DateTimeInput({super.key,required this.title,required this.dateinput,required this.callback});
 

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: kInputPaddingHorizontal,
        child: TextField(
        controller: dateinput,
        keyboardType: TextInputType.datetime,
        readOnly: true,
        decoration: InputDecoration(
          border:  OutlineInputBorder(borderRadius: kBorderRadiusInput),
          labelText: title,
        ),
         onTap: () async {
          DatePicker.showDateTimePicker(context,
                              showTitleActions: true,
                              minTime: DateTime(2000),
                              maxTime: DateTime(DateTime.now().year), onChanged: (date) {
                            print('change $date');
                          }, onConfirm: (date) {
                                String formattedDate = DateFormat('yyyy-MM-dd HH:mm').format(date); 
                                callback(date,formattedDate);
                          }, currentTime: DateTime.now(), locale: LocaleType.en);
                
                },
      ),
    );
  }
}
