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
			[Embed(source="../media/graphic/Kansiotyhj.png")]
			public static const KansioTyhj:Class;
			
			[Embed(source="./media/graphic/AlotusNappi.png")]
			public static const AloitusNappi:Class;
			
			[Embed(source="./media/graphic/kansiotyhj.png")]
			public static const Bgkansio:Class;
			
			[Embed(source="../media/graphic/pelitaka.png")]
			public static const PeliTaka:Class;
			
			private static var gameTextures:Dictionary = new Dictionary;
			private static var gameTextureAtlas:TextureAtlas;
				
			[Embed(source="./media/graphic/mySpritesheet.png")]
			public static const AtlasTextureGame:Class;
			
			[Embed(source="./media/graphic/mySpritesheet.xml", mimeType="application/octet-stream")]//mySpritesheet.xml// , mimeType="application/octet-stream"
			public static const AtlasXmlGame:Class;
		
			//Äänet  Luultavasti pitää tehdä mute nappi ja äänenvoimakkuuden säätö vaihtoehdon
			
			[Embed(source="../media/./sounds/testsounds/bgWelcome.mp3")]
			public static const SSmusic:Class;
			
			[Embed(source="../media/./sounds/testsounds/bgGame.mp3")]
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