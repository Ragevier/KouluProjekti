package
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	
	import starling.display.Sprite;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	
	public class Assets extends Sprite
	{
		public function Assets()
		{
			[Embed(source=".../Media/graphic/Alkukuvatähä.png")]
			public static const asd:Class;
			
			[Embed(source=".../Media/graphic/joku.png")]
			public static const asd:Class;
			
			private static var gameTextures:Dictionary = new Dictionary;
			private static var gameTextureAtlas = new TextureAtlas;
		
			[Embed(source=".../Media/graphic/Alkukuvatähä")]
			public static const asd:Class;
			
			[Embed(source=".../Medi/graphic/Alkukuvatähä")]
			public static const asd:Class;
		
		
		}
		public static function getAtlas():TextureAtlas
		{
			//if(gameTextureAtlas == null){
			//var texture:Texture = getTexture("AtlasTextureGame");
			//var xml:XML = (new AtlasXML);
			//gameTexture	
			}
		//return gameTextureAtlas;
		}
	public static function getTextures(name:String);
	{
		if(gameTexture[name] == null){
			
	}
		
}
}