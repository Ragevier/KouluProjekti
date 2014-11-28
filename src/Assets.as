package
{
	import flash.display.Bitmap;
	import flash.media.Sound;
	import flash.media.SoundMixer;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	
	
	public class Assets 
	
		{	//Grafiikka
			
			[Embed(source="../media/graphic/aloitus.png")]
			public static const Aloitus:Class;
				
			[Embed(source="./media/graphic/kansiotyhj.png")]
			public static const Bgkansio:Class;
			
			[Embed(source="../media/graphic/pelitaka.png")]
			public static const PeliTaka:Class;
			
			[Embed(source="./media/graphic/kansionappi.png")]
			public static const KansioNappi:Class;
			
			[Embed(source="../media/graphic/kansiotyhj.png")]
			public static const KansioTyhj:Class;
			
			[Embed(source="../media/graphic/returnBtn.png")]
			public static const ReturnBtn:Class;
			
			[Embed(source="../media/graphic/lajinappi.png")]
			public static const LajiNappi:Class;
			
			[Embed(source="../media/graphic/pallo.png")]
			public static const muteNappi:Class
			
			[Embed(source="../media/graphic/kanttinen.png")]
			public static const paahenkilo:Class;
		
			[Embed(source="./media/graphic/muteBtnTwo.png")]
			public static const MuteBtnTwo:Class;
			
			private static var gameTextures:Dictionary = new Dictionary;
			private static var gameTextureAtlas:TextureAtlas;
			private static var sienetTextureAtlas:TextureAtlas;
			private static var kasvitTextureAtlas:TextureAtlas;
			private static var paahenkiloTextureAtlas:TextureAtlas;
			private static var takaisinNappiTextureAtlas:TextureAtlas;
			
			[Embed(source="../media/graphic/puut.png")]
			public static const AtlasTextureGame:Class;
				
			[Embed(source="../media/graphic/puut.xml", mimeType="application/octet-stream")]
			public static const AtlasXmlGame:Class;								
			
			[Embed(source="../media/graphic/sienet.png")]
			public static const Sienet:Class;
		
			[Embed(source="../media/graphic/sienet.xml", mimeType="application/octet-stream")]
			public static const SienetXml:Class;		
			
			[Embed(source="../media/graphic/kasvit.png")]
			public static const Kasvit:Class;
			
			[Embed(source="../media/graphic/kasvit.xml", mimeType="application/octet-stream")]
			public static const KasvitXml:Class;
			
			[Embed(source="../media/graphic/paahenkilo.png")]
			public static const Paahenkilo:Class;
			
			[Embed(source="../media/graphic/paahenkilo.xml", mimeType="application/octet-stream")]
			public static const paahenkiloXml:Class;
			
			[Embed(source="../media/graphic/Takaisin_nappi.png")]
			public static const Takaisinnappi:Class;
			
			[Embed(source="../media/graphic/Takaisin_nappi.xml", mimeType="application/octet-stream")]
			public static const TakaisinNappiXml:Class;
			
			
			public static function getTakaisinNappi():TextureAtlas
			{
				if (takaisinNappiTextureAtlas == null)
				{
					var texture:Texture = getTexture("Takaisinnappi");
					var xml:XML = XML(new TakaisinNappiXml);
					paahenkiloTextureAtlas = new TextureAtlas(texture, xml);
				}
				return paahenkiloTextureAtlas;
			}
			public static function getPaahenkilo():TextureAtlas
			{
			if (paahenkiloTextureAtlas == null)
			{
			var texture:Texture = getTexture("Paahenkilo");
			var xml:XML = XML(new paahenkiloXml);
			paahenkiloTextureAtlas = new TextureAtlas(texture, xml);
			}
			return paahenkiloTextureAtlas;
			}
			public static function getKasvit():TextureAtlas
			{
			 if (kasvitTextureAtlas == null)
			 {
			var texture:Texture = getTexture("Kasvit");
			var xml:XML = XML(new KasvitXml());
			 kasvitTextureAtlas = new TextureAtlas(texture, xml);
			 }
			 return kasvitTextureAtlas;
			}
			public static function getSienet():TextureAtlas	
		{		
		if (sienetTextureAtlas == null)
	{
		var texture:Texture = getTexture("Sienet");	
		var xml:XML = XML(new SienetXml());
		sienetTextureAtlas = new TextureAtlas(texture, xml);
		}
		return sienetTextureAtlas;
		}
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
	}
}