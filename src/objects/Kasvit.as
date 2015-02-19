package objects
{
	import screens.KansioKasvit;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	
	public class Kasvit extends Sprite
	{
		public var ahomansikka:Image;
		public var kanerva:Image;
		public var karpalo:Image;
		public var kielo:Image;
		public var kieloYks:Image;
		public var kaenkaali:Image;
		public var lakka:Image;
		public var leskenlehti:Image;
		public var mustikka:Image;
		
		public var kysymys1:Image;
		public var kysymysKanerva:Image;
		public var kysymysA1:Button
		public var kysymysB1:Button
		public var kysymysC1:Button
		public var kansioKasviT:KansioKasvit;
		public var toimiko:Image;
		
		public var vastaus:Button

		
		public function Kasvit()
		{
		
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		this.addEventListener(TouchEvent.TOUCH, onTouch);
		}
		
		public function onTouch(te:TouchEvent):void
		{	
			if(te.getTouch(ahomansikka, TouchPhase.BEGAN)){            // Toimiva ahomansikka klikkaus
						
			}//else if(te.getTouch(kanerva, TouchPhase.BEGAN)){
			//kanerva.visible = false;}
			else if(te.getTouch(karpalo, TouchPhase.BEGAN)){
		
			karpalo.visible = false;						// piilottaa kuvakkeet testin vuoksi
		}else if(te.getTouch(kielo, TouchPhase.BEGAN)){
		
			kielo.visible = false;
		}else if(te.getTouch(kieloYks, TouchPhase.BEGAN)){
		
			kieloYks.visible = false;
		}else if(te.getTouch(kaenkaali, TouchPhase.BEGAN)){
		
			kaenkaali.visible = false;
		
		}else if(te.getTouch(lakka, TouchPhase.BEGAN)){
		
			lakka.visible = false;
		}else if(te.getTouch(mustikka, TouchPhase.BEGAN)){
		
			mustikka.visible = false;
		}else if(te.getTouch(leskenlehti, TouchPhase.BEGAN)){
		
			leskenlehti.visible = false;
		}
		}
		private function onAddedToStage():void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		kasvitArt();
		}
		
		private function kasvitArt():void
		{
		
		ahomansikka = new Image(Assets.getKasvit().getTexture("ahomansikka"));
		this.addChild(ahomansikka)
		ahomansikka.x = 200;
		ahomansikka.y = 20;	
		
		kanerva = new Image(Assets.getKasvit().getTexture("kanerva1"));
		this.addChild(kanerva)
		kanerva.x = 513;
		kanerva.y = 20;
		
		karpalo = new Image(Assets.getKasvit().getTexture("karpalo"));
		this.addChild(karpalo)
		karpalo.x = 20;
		karpalo.y = 45;	
		
		kielo = new Image(Assets.getKasvit().getTexture("kielo"));
		this.addChild(kielo)
		kielo.x = 246;
		kielo.y = 420;	
		
		
		kieloYks = new Image(Assets.getKasvit().getTexture("kielo"));
		this.addChild(kieloYks)
		kieloYks.x = 100;
		kieloYks.y = 300;	
		
		
		kaenkaali = new Image(Assets.getKasvit().getTexture("kaenkaali"));
		this.addChild(kaenkaali)
		kaenkaali.x = 78;
		kaenkaali.y = 428;	
		
		lakka = new Image(Assets.getKasvit().getTexture("lakka"));
		this.addChild(lakka)
		lakka.x = 100;
		lakka.y = 316;
			
		mustikka = new Image(Assets.getKasvit().getTexture("mustikka"));
		this.addChild(mustikka)
		mustikka.x = 20;
		mustikka.y = 43;
		
		leskenlehti = new Image(Assets.getKasvit().getTexture("leskenlehti"));
		this.addChild(leskenlehti)
		leskenlehti.x = 45;
		leskenlehti.y = 70;
		}
	}
}