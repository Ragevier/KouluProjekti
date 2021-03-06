package screens
{
	import flash.ui.Keyboard;
	
	import events.NavigationEvent;
	
	import objects.Kasvit;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	
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
		
		public var ahomansikkaT:Button; // Kasvit
		public var kanervaT:Button;
		public var karpaloT:Button;
		public var kieloT:Button;
		public var kaenkaaliT:Button;
		public var lakkaT:Button;
		public var leskenlehtiT:Button;
		public var mustikkaT:Image;
		public var oravanmarjaT:Button;
		public var piharatamoT:Button;
		public var punaapilaT:Button;
		public var puolukkaT:Button;
		public var paivankakkaraT:Button;
		public var sinivuokkoT:Button;
		public var vadelmaT:Button;
		public var valkoapilaT:Button;
		public var valkovuokkoT:Button;
		public var voiKukkaT:Button;    // Kasvit
		
		public var takaisinPeliin:Button; 
		public var lisaaKasveja:Button;
		public var lisaaKasveja2:Button;
		public var takaisinKasveja:Button
		
		public var Aho:String 
		public var kasvi:Kasvit;
		public var inGame:InGame;
		public var valikkoRuutu:Valikko;
		
		public var mustikkaKuva:String;
		
		public var kasvit:Kasvit;
		
		public function KansioKasvit()
		
		
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage)
		this.addEventListener(KeyboardEvent.KEY_DOWN, keyboard)	
	
		}
		
		private function keyboard(event:KeyboardEvent):void
		{
			if(event.keyCode == Keyboard.ESCAPE){
				
				if(event.keyCode == Keyboard.ESCAPE){
				if(valikkoRuutu.visible == false){
				valikkoRuutu.visible = true
				}else{
				valikkoRuutu.visible = false}
			}		
		}
		}		
		public function onAddedToStage(event:Event):void
		{
		this.addEventListener(Event.REMOVED_FROM_STAGE, onAddedToStage)	
		
		kansioTausta = new Image(Assets.getTexture("KansioTyhj"));
		this.addChild(kansioTausta);
		KansionKuvat();
		ahomansikkaNakyva();
		ahomansikkaTun();
		kanervaTun();
		kanervaNaky();
		karpaloTun();
		karpaloNaky();
		kieloTun();
		KieloNaky();
		kaenkaaliTun();
		kaenkaaliNaky();
		lakkaTun();
		lakkaNaky();
		leskenlehtiTun();
		leskenlehtiNaky();
		mustikkaTun();
		mustikkaNaky();
		}
		
		public function mustikkaNaky():void
		{
			mustikka =  new Button(Assets.getLaatKasvi1().getTexture(mustikkaKuva)); //kasvi1 Tuntematon  "Mustikka "
			mustikka.x = 160;	
			mustikka.y = 340;
			mustikka.visible = false;
			this.addChild(mustikka)
		}
		
		public function mustikkaTun():void
		{
			mustikkaT =  new Image(Assets.getLaatKasvi1().getTexture("Mustikka " + mustikkaKuva )); //kasvi1 Tuntematon
			mustikkaT.x = 160;	
			mustikkaT.y = 340;
			this.addChild(mustikkaT)
		}
		
		private function leskenlehtiNaky():void
		{
			leskenlehti = new Button(Assets.getLaatKasvi3().getTexture("Leskenlehti ")); //kasvi3 Tuntematon
			leskenlehti.x = 25;	
			leskenlehti.y = 340;
			leskenlehti.visible = false;
			this.addChild(leskenlehti);
		}
		
		private function leskenlehtiTun():void
		{
			leskenlehtiT = new Button(Assets.getLaatKasvi3().getTexture("tuntLeskenlehti")); //kasvi3 Tuntematon
			leskenlehtiT.x = 25;	
			leskenlehtiT.y = 340;
			this.addChild(leskenlehtiT);
		}
		
		private function lakkaNaky():void
		{
			lakka =  new Button(Assets.getLaatKasvi1().getTexture("Lakka ")); //kasvi1 Tuntematon
			lakka.x = 160;	
			lakka.y = 240;
			lakka.visible = false;
			this.addChild(lakka)
		}
		
		private function lakkaTun():void
		{
			lakkaT =  new Button(Assets.getLaatKasvi1().getTexture("Tuntematon Lakka")); //kasvi1 Tuntematon
			lakkaT.x = 160;	
			lakkaT.y = 240;
			this.addChild(lakkaT)
		}
		
		private function kaenkaaliNaky():void
		{
			kaenkaali =  new Button(Assets.getLaatKasvi1().getTexture("Käenkaali ")); //kasvi1
			kaenkaali.x = 25;	
			kaenkaali.y = 240;
			kaenkaali.visible = false;
			this.addChild(kaenkaali);	
		}
		
		private function kaenkaaliTun():void
		{
			kaenkaaliT =  new Button(Assets.getLaatKasvi1().getTexture("tuntematon Käenkaali")); //kasvi1 Tuntematon
			kaenkaaliT.x = 25;	
			kaenkaaliT.y = 240;
			this.addChild(kaenkaaliT)
		}
		
		private function KieloNaky():void
		{
			kielo =  new Button(Assets.getLaatKasvi2().getTexture("Kielo")); //kasvi2
			kielo.x = 160;	
			kielo.y = 140;
			kielo.visible = false;
			this.addChild(kielo);
		}
		
		private function kieloTun():void
		{
			kieloT =  new Button(Assets.getLaatKasvi2().getTexture("Tuntematon Kielo")); //kasvi2 Tuntematon
			kieloT.x = 160;	
			kieloT.y = 140;
			this.addChild(kieloT);
		}
		
		private function karpaloNaky():void
		{
			karpalo =  new Button(Assets.getLaatKasvi1().getTexture("Karpalo ")); //kasvi1
			karpalo.x = 25;	
			karpalo.y = 140;
			karpalo.visible = false;
			this.addChild(karpalo);	
		}
		
		private function karpaloTun():void
		{
			karpaloT =  new Button(Assets.getLaatKasvi1().getTexture("Tuntematon Karpalo")); //kasvi1 Tuntematon
			karpaloT.x = 25;	
			karpaloT.y = 140;
			this.addChild(karpaloT)
		}
		
		private function kanervaNaky():void
		{
			kanerva = new Button(Assets.getLaatKasvi1().getTexture("Kanerva ")); //kasvi1
			kanerva.x = 160;
			kanerva.y = 40;       
			kanerva.visible = false;
			this.addChild(kanerva); 
		}
		
		private function kanervaTun():void
		{
			kanervaT = new Button(Assets.getLaatKasvi1().getTexture("tuntematon Kanerva")); //kasvi1 Tuntematon
			kanervaT.x = 160;
			kanervaT.y = 40; 
			this.addChild(kanervaT)
		}		

		
		private function ahomansikkaNakyva():void{
			
			ahomansikka = new Button(Assets.getLaatKasvi1().getTexture("Ahomansikka ")); 
			ahomansikka.x = 25;	
			ahomansikka.y = 40; 
		    ahomansikka.visible = false;
			this.addChild(ahomansikka)
		}
		private function KansionKuvat():void
		{
	   				
		//lisaaKasveja = new Button(Assets.getTexture("KansioNappi")); 
		//lisaaKasveja.x = 235;	
		//lisaaKasveja.y = 420;
		//this.addChild(lisaaKasveja)	
			
		lisaaKasveja2 = new Button(Assets.getTexture("LajiNappi")); 
		lisaaKasveja2.x = 235;	
		lisaaKasveja2.y = 450;
		lisaaKasveja2.visible = false;
		this.addChild(lisaaKasveja2)	
		
		takaisinKasveja = new Button(Assets.getTexture("MuteBtnTwo")); 
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
	
		private function ahomansikkaTun():void
		{
			ahomansikkaT = new Button(Assets.getLaatKasvi1().getTexture("Tunt ahomansikka")); // Tuntematon kasvi1   "Tunt ahomansikka"
			ahomansikkaT.x = 25;	
			ahomansikkaT.y = 40; 
			this.addChild(ahomansikkaT)
			
			
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