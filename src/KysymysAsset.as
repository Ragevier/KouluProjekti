package
{	
	import flash.display.Bitmap;
	import flash.media.Sound;
	import flash.media.SoundMixer;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	 
	public class KysymysAsset
	{
	private static var gameTextures:Dictionary = new Dictionary;
	private static var gameTextureAtlas:TextureAtlas;
	private static var kysymysTextureAtlas:TextureAtlas;
	
	[Embed(source="../media/elainten/uudet eläin spritet.png")]        // Kysymyksen Grafiikat
	public static const kysymykset:Class;
	
	[Embed(source="../media/elainten/uudet eläin spritet.xml", mimeType="application/octet-stream")] // Kysymyksen Grafiikat
	public static const kysymysXml:Class;	
	
	
	public static function getKysymys():TextureAtlas
	{
		if (kysymysTextureAtlas == null)
		{
			var texture:Texture = getTexture("kysymykset");
			var xml:XML = XML(new kysymysXml);
			kysymysTextureAtlas = new TextureAtlas(texture, xml);
		}
		return  kysymysTextureAtlas;
	}
	
	public static function getTexture(name:String):Texture
	{
		if(gameTextures[name] == undefined)
		{
			var bitmap:Bitmap = new KysymysAsset[name]();
			gameTextures[name] = Texture.fromBitmap(bitmap);
		}
		return gameTextures[name];	
	}	
	}
}