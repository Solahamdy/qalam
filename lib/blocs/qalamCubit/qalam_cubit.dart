import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../enums/courses_enum.dart';
import '../../utils/styles.dart';
part 'qalam_state.dart';

class QalamCubit extends Cubit<QalamState> {
  QalamCubit() : super(QalamInitial());
  static QalamCubit get(context) => BlocProvider.of(context);


 CoursesEnum ? courseType;
 String ? type ;
 TextStyle ? style ;
 Color ? color ;
 Color ? borderColor ;

 defineCourseType(){
   if ( courseType == CoursesEnum.completed){
     type = 'مكتمل';
     color = const Color(0xFFf7fdf6);
     borderColor =const Color(0xFF028174);
     style = Styles.style8g;
   }
   else if ( courseType == CoursesEnum.incomplete)
     {
       type = 'غير مكتمل';
       color =const Color(0xfffffbf5);
       borderColor =const Color(0xffFF7562);
       style = Styles.style8r;

     }
   else if ( courseType == CoursesEnum.saved)
   {
     type = 'محفوظة';
     color = const Color(0xfff6f6f6);
     borderColor  = const Color(0xff4f4f4f);
     style = Styles.style8;
   }
   emit(DefineCourseTypeState());
 }






}
