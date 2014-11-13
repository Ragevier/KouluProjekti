package
{
	import flash.display.Bitmap;
	import flash.media.Sound;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	
	public class Assets 
	
		{
			//Grafiikka
			[Embed(source="../media/grafiikka/PunaKansioTyhj.png")]
			public static const AlkuRuutu:Class;
			
			[Embed(source="../media/testiKuvat/AlotusNappi.png")]
			public static const Nappi:Class;
			
			private static var gameTextures:Dictionary = new Dictionary;
			private static var gameTextureAtlas:TextureAtlas;
				
			[Embed(source="../media/TestiKuvat/mySpritesheet.png")]
			public static const AtlasTextureGame:Class;
			
			[Embed(source="../media/TestiKuvat/mySpritesheet.xml", mimeType="application/octet-stream")]//mySpritesheet.xml// , mimeType="application/octet-stream"
			public static const AtlasXmlGame:Class;
		
			//Äänet
			
			[Embed(source="../media/sounds/testsounds/bgWelcome.mp3")]
			public static const SCmusic:Class;
			
			[Embed(source="../media/sounds/testsounds/bgGame.mp3")]
			public static const BgMusic:Class;	
			
			private static var gameSounds:Dictionary = new Dictionary; 									
				
			public static function getAtlas():TextureAtlas
		{
			if(gameTextureAtlas == null)
			{
			var texture:Texture = getTexture("AtlasTextureGame");
			var xml:XML = XML(new AtlasXmlGame());
			gameTextureAtlas = new TextureAtlas(texture, xml);
			}
		return gameTextureAtlas;
		}
	public static function getTexture(name:String):Texture
	{
		if(gameTextures[name] == undefined)
		{
		var bitmap:Bitmap = new Assets[name]();
		gameTextures[name] = Texture.fromBitmap(bitmap);
		}
		return gameTextures[name];	
		}
		
		public static function getSound(name:String):Sound	
		{
		if(gameSounds[name] == undefined)
		{
  		var sound:Sound = new Assets[name]();
		gameSounds[name] = sound;
		}
		return gameSounds[name];
		}
	}
}