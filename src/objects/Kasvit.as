package objects
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	
	public class Kasvit extends Sprite
	{
		private var ahomansikka:Image;
		private var kanerva:Image;
		private var karpalo:Image;
		private var kielo:Image;
		private var kieloYks:Image;
		private var kaenkaali:Image;
		private var lakka:Image;
		private var leskenlehti:Image;
		private var mustikka:Image;
		
		public function Kasvit()
		{
		
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		this.addEventListener(TouchEvent.TOUCH, Klickkaus);
		}
		
		private function Klickkaus(te:TouchEvent):void
		{
			if(te.getTouch(ahomansikka, TouchPhase.BEGAN)){            // Toimiva kasvien Klikkaus
			ahomansikka.visible = false;			
		}else if(te.getTouch(kanerva, TouchPhase.BEGAN)){
			kanerva.visible = false;
		}
		}
		
		private function onAddedToStage():void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		kasvitArt();
		}
		
		private function kasvitArt():void
		{
		ahomansikka = new Image(Assets.getKasvit().getTexture("Ahomansikka"));
		this.addChild(ahomansikka)
		ahomansikka.x = 200;
		ahomansikka.y = 20;	
		
		kanerva = new Image(Assets.getKasvit().getTexture("Kanerva"));
		this.addChild(kanerva)
		kanerva.x = 513;
		kanerva.y = 20;
		
		karpalo = new Image(Assets.getKasvit().getTexture("Karpalo"));
		this.addChild(karpalo)
		karpalo.x = 20;
		karpalo.y = 45;	
		
		kielo = new Image(Assets.getKasvit().getTexture("Kielo"));
		this.addChild(kielo)
		kielo.x = 246;
		kielo.y = 420;	
		
		
		kieloYks = new Image(Assets.getKasvit().getTexture("Kielo"));
		this.addChild(kieloYks)
		kieloYks.x = 100;
		kieloYks.y = 300;	
		
		
		kaenkaali = new Image(Assets.getKasvit().getTexture("Käenkaali"));
		this.addChild(kaenkaali)
		kaenkaali.x = 78;
		kaenkaali.y = 428;	
		
		lakka = new Image(Assets.getKasvit().getTexture("Lakka"));
		this.addChild(lakka)
		lakka.x = 100;
		lakka.y = 316;
			
		mustikka = new Image(Assets.getKasvit().getTexture("Mustikka"));
		this.addChild(mustikka)
		mustikka.x = 20;
		mustikka.y = 43;
		
		leskenlehti = new Image(Assets.getKasvit().getTexture("Leskenlehti"));
		this.addChild(leskenlehti)
		leskenlehti.x = 45;
		leskenlehti.y = 70;
		}
	}
}