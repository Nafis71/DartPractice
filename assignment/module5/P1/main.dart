import 'Media.dart';
import 'Song.dart';

main(){
  Media media = Media();
  Song song = Song(artist: "Ed Sheeran");
  media.play();
  song.play();
}