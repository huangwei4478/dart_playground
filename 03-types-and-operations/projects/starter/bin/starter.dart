// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

/// Copy and paste the following emojis as needed to complete this 
/// chapter's exercizes and challenges:
/// 
/// ๐ฏ
/// ๐ฒ๐ณ
/// ๐จโ๐ฉโ๐งโ๐ฆ
/// ๐น๐ฉ๐ท๐ด
/// ๐๐ฟ
import 'package:characters/characters.dart';
void main() {
  const firstName = 'huang';
  const lastName = 'wei';

  const fullName = firstName + ' ' + lastName;
  const myDetails = '$fullName, hello there!';
  print(myDetails);

  const attendanceScore = 90;
  const homeworkScore = 80;
  const examScore = 94;

  final grade = (attendanceScore * 0.2 + homeworkScore * 0.3 + examScore * 0.5).toInt();
  print(grade);

  const flags = '๐น๐ฉ๐ท๐ด';
  print(flags.runes);

  const vote = 'Thumbs up! ๐๐ฟ';    
  print(vote.codeUnits.length);   // UTF-16 length
  print(vote.runes.length);
  print(vote.characters.length);
}
