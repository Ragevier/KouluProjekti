package
{
	
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundMixer;
	import flash.media.SoundTransform;
	import flash.utils.Dictionary;
	
	import starling.display.Button;
	import starling.display.Sprite;
	
	public class Sounds 
	{
		// Äänet duhh	
		
			[Embed(source="../media/./sounds/testsounds/bgWelcome.mp3")]
			public static const SSmusic:Class;
			
			[Embed(source="../media/./sounds/testsounds/bgGame.mp3")]
			public static const bgMusic:Class;	
		
			public static var alkuRuutu:Sound = new Sounds.SSmusic() as Sound;
			public static var peliMusiikki:Sound = new Sounds.bgMusic() as Sound;
			
			public static var muted:Boolean = true;													
			
		
	}	
}