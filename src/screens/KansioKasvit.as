package screens
{
	import events.NavigationEvent;
	
	import flash.ui.Keyboard;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
		
		public class KansioKasvit extends Sprite
	{
		public var kansioTausta:Image;
		
		public var ahomansikka:Button; // Kasvit
		public var kanerva:Button;
		public var karpalo:Button;
		public var kielo:Button;
		public var kaenkaali:Button;
		public var lakka:Button;
		public var leskenlehti:Button;
		public var mustikka:Button;
		public var oravanmarja:Button;
		public var piharatamo:Button;
		public var punaapila:Button;
		public var puolukka:Button;
		public var paivankakkara:Button;
		public var sinivuokko:Button;
		public var vadelma:Button;
		public var valkoapila:Button;
		public var valkovuokko:Button;
		public var voiKukka:Button;    // Kasvit 
		
		public var takaisinPeliin:Button; 
		public var lisaaKasveja:Button;
		public var lisaaKasveja2:Button;
		public var takaisinKasveja:Button
		
		
		public var valikkoRuutu:Valikko;
		
		
		public function KansioKasvit()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage)
		this.addEventListener(KeyboardEvent.KEY_DOWN, valikko)
		}
		
		private function valikko(event:KeyboardEvent):void
		{
		if(event.keyCode == Keyboard.ESCAPE)
		{
			
			if(event.keyCode == Keyboard.ESCAPE){
				if(valikkoRuutu.visible == false){
					valikkoRuutu.visible = true
				}else{valikkoRuutu.visible = false}
		}
		}
		}		
		public function onAddedToStage(event:Event):void
		{
		this.addEventListener(Event.REMOVED_FROM_STAGE, onAddedToStage)	
		KansionKuvat();
		}
		
		private function KansionKuvat():void
		{
		kansioTausta = new Image(Assets.getTexture("KansioTyhj"));
		this.addChild(kansioTausta);
	
		ahomansikka = new Button(Assets.getTexture("LajiNappi")); // LajiNappit pitää muuttaa kuvien omaksi napiksi
		ahomansikka.x = 25;	
		ahomansikka.y = 40; 
		this.addChild(ahomansikka);       
		
		kanerva = new Button(Assets.getTexture("LajiNappi"));
		kanerva.x = 160;
		kanerva.y = 40;       
		this.addChild(kanerva); 
			
		karpalo =  new Button(Assets.getTexture("LajiNappi"));
		karpalo.x = 25;	
		karpalo.y = 140;
		this.addChild(karpalo);			
		
		kielo =  new Button(Assets.getTexture("LajiNappi"));
		kielo.x = 160;	
		kielo.y = 140;
		this.addChild(kielo);	
			
		kaenkaali =  new Button(Assets.getTexture("LajiNappi"));
		kaenkaali.x = 25;	
		kaenkaali.y = 240;
		this.addChild(kaenkaali);	
		
		lakka =  new Button(Assets.getTexture("LajiNappi"));
		lakka.x = 160;	
		lakka.y = 240;
		this.addChild(lakka); 
			
		leskenlehti = new Button(Assets.getTexture("LajiNappi"));
		leskenlehti.x = 25;	
		leskenlehti.y = 340;
		this.addChild(leskenlehti); 
		
		mustikka =  new Button(Assets.getTexture("LajiNappi"));
		mustikka.x = 160;	
		mustikka.y = 340;
		this.addChild(mustikka);   //8 ========================================
		
		oravanmarja =  new Button(Assets.getTexture("LajiNappi"));
		oravanmarja.x = 25;
		oravanmarja.y = 40;
		oravanmarja.visible = false;
		this.addChild(oravanmarja);
		
		piharatamo =  new Button(Assets.getTexture("LajiNappi"));
		piharatamo.x = 160;	
		piharatamo.y = 40;
		piharatamo.visible = false;
		this.addChild(piharatamo);
		
		punaapila =  new Button(Assets.getTexture("LajiNappi"));
		punaapila.x = 25;	
		punaapila.y = 140;
		punaapila.visible = false;
		this.addChild(punaapila);
		
		puolukka = new Button(Assets.getTexture("LajiNappi"));
		puolukka.x = 160;	
		puolukka.y = 140;
		puolukka.visible = false;
		this.addChild(puolukka)
		
		paivankakkara = new Button(Assets.getTexture("LajiNappi"));
		paivankakkara.x = 160;	
		paivankakkara.y = 240;
		paivankakkara.visible = false;
		this.addChild(paivankakkara)
			
		sinivuokko = new Button(Assets.getTexture("LajiNappi"));
		sinivuokko.x = 25;	
		sinivuokko.y = 240;                                           
		sinivuokko.visible = false;
		this.addChild(sinivuokko)
			
		vadelma = new Button(Assets.getTexture("LajiNappi"));
		vadelma.x = 25;
		vadelma.y = 340;
		vadelma.visible = false;
		this.addChild(vadelma)
		
		valkoapila = new Button(Assets.getTexture("LajiNappi"));
		valkoapila.x = 160;	
		valkoapila.y = 340;
		valkoapila.visible = false;  			// 8
		this.addChild(valkoapila)
		
		valkovuokko = new Button(Assets.getTexture("LajiNappi"));
		valkovuokko.x = 25;	
		valkovuokko.y = 40;
		valkovuokko.visible = false;	
		this.addChild(valkovuokko)
		
		voiKukka = new Button(Assets.getTexture("LajiNappi")); 
		voiKukka.x = 160;	
		voiKukka.y = 40;
		voiKukka.visible = false;
		this.addChild(voiKukka)	
		
		lisaaKasveja = new Button(Assets.getTexture("KansioNappi")); 
		lisaaKasveja.x = 235;	
		lisaaKasveja.y = 420;
		this.addChild(lisaaKasveja)	
			
		lisaaKasveja2 = new Button(Assets.getTexture("LajiNappi")); 
		lisaaKasveja2.x = 235;	
		lisaaKasveja2.y = 450;
		lisaaKasveja2.visible = false;
		this.addChild(lisaaKasveja2)	
		
		takaisinKasveja = new Button(Assets.getTexture("LajiNappi")); 
		takaisinKasveja.x = 25;	
		takaisinKasveja.y = 450;
		takaisinKasveja.visible = false;
		this.addChild(takaisinKasveja)
			
		takaisinPeliin = new Button(Assets.getTakaisinNappi().getTexture("Takaisin_nappi0000"));
		this.addChild(takaisinPeliin);
		takaisinPeliin.x = 230;		
		takaisinPeliin.y = 20;
			
		valikkoRuutu = new Valikko;
		valikkoRuutu.visible = false;
		this.addChild(valikkoRuutu)	
			
		this.addEventListener(Event.TRIGGERED, Lisaa)
		}
		
		private function Lisaa(event:Event):void
		{
		var buttonClicked:Button = event.target as Button
		if((buttonClicked as Button) == lisaaKasveja)
		{	
		ahomansikka.visible = false; // Katoaa
		kanerva.visible = false;
		karpalo.visible = false;
		kielo.visible = false;
		kaenkaali.visible = false;
		lakka.visible = false;
		leskenlehti.visible = false;
		mustikka.visible = false; // Katoaa
		
		oravanmarja.visible = true; // Tulee Esille
		piharatamo.visible = true;
		punaapila.visible = true;
		puolukka.visible = true;
		paivankakkara.visible = true;
		sinivuokko.visible = true;
		vadelma.visible = true;
		valkoapila.visible = true;  // Esille
		
		lisaaKasveja2.visible = true; 
		lisaaKasveja.visible = false;
		
		takaisinKasveja.visible = true;
		
		this.addEventListener(Event.TRIGGERED, Lisaa2)
		this.addEventListener(Event.TRIGGERED, TakaisinPain)
		}
		}
		
		private function TakaisinPain(event:Event):void
		{
			var buttonClicked:Button = event.target as Button
			if((buttonClicked as Button) == takaisinKasveja)
			{
				ahomansikka.visible = true; // Esille
				kanerva.visible = true;
				karpalo.visible = true;
				kielo.visible = true;
				kaenkaali.visible = true;
				lakka.visible = true;
				leskenlehti.visible = true;
				mustikka.visible = true; // Esille
				
				oravanmarja.visible = false; // Katoaa
				piharatamo.visible = false;
				punaapila.visible = false;
				puolukka.visible = false;
				paivankakkara.visible = false;
				sinivuokko.visible = false;
				vadelma.visible = false;
				valkoapila.visible = false;  // Katoaa
				
				valkovuokko.visible = false;
				voiKukka.visible = false; 
				
				lisaaKasveja2.visible = false; 
				lisaaKasveja.visible = true;
				takaisinKasveja.visible = false;
			}
		}
		private function Lisaa2(event:Event):void
		{	
			var buttonClicked:Button = event.target as Button
			if((buttonClicked as Button) == lisaaKasveja2)
			{
				
				oravanmarja.visible = false; // katoaa
				piharatamo.visible = false;
				punaapila.visible = false;
				puolukka.visible = false;
				paivankakkara.visible = false;
				sinivuokko.visible = false;
				vadelma.visible = false;
				valkoapila.visible = false;  // katoaa
				
				valkovuokko.visible = true; // Esille
				voiKukka.visible = true;  // Esille
				
				lisaaKasveja2.visible = false;
				
				takaisinKasveja.visible = true;		
			}			
		}
		public function disposeTemporarily():void
		{
			this.visible = false;
		}
		public function initialize():void
		{
			this.visible = true;
		}
	}
}