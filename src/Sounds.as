package
{
	import starling.display.Sprite;
	import flash.media.Sound
	import flash.media.SoundMixer
	import flash.utils.Dictionary;
	
	public class Sounds 
	{
		
			
			[Embed(source="../media/./sounds/testsounds/bgWelcome.mp3")]
			public static const SSmusic:Class;
			
			[Embed(source="../media/./sounds/testsounds/bgGame.mp3")]
			public static const bgMusic:Class;	
		
			//private static var gameSounds:Dictionary = new Dictionary; 
			
			public static var alkuRuutu:Sound = new Sounds.SSmusic() as Sound;
			public static var peliMusiikki:Sound = new Sounds.bgMusic() as Sound;
			
			public static var muted:Boolean = false;
			
		}
}
