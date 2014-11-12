package
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
		
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	
	public class Assets 
	
		{
			[Embed(source=".../Media/testiKuvat/Alotus.png")]
			public static const AlkuRuutu:Class;
			
			[Embed(source=".../Media/testiKuvat/AlotusNappi.png")]
			public static const Nappi:Class;
			
			private static var gameTextures:Dictionary = new Dictionary;
			private static var gameTextureAtlas = TextureAtlas;
			
			[Embed(source="../media/graphics/")]//SpriteSheetille
			public static const AtlasTextureGame:Class;
			
			[Embed(source="../media/graphics/", mimeType="application/octet-stream")]//mySpritesheet.xml
			public static const AtlasXmlGame:Class;
		
			
		public static function getAtlas():TextureAtlas
		{
			if(gameTextureAtlas == null)
			{
			var texture:Texture = getTexture("AtlasTextureGame");
			var xml:XML = XML(new AtlasXmlGame);
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
		
}
}