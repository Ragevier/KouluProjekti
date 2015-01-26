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
		
		public var ahomansikkaT:Button; // Kasvit
		public var kanervaT:Button;
		public var karpaloT:Button;
		public var kieloT:Button;
		public var kaenkaaliT:Button;
		public var lakkaT:Button;
		public var leskenlehtiT:Button;
		public var mustikkaT:Button;
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
	
		ahomansikkaT = new Button(Assets.getLaatKasvi1().getTexture("Tunt ahomansikka")); // Tuntematon kasvi1
		ahomansikkaT.x = 25;	
		ahomansikkaT.y = 40; 
		this.addChild(ahomansikkaT)
		
		ahomansikka = new Button(Assets.getLaatKasvi1().getTexture("Ahomansikka ")); // LajiNappit pitää muuttaa kuvien omaksi napiksi //kasvi1
		ahomansikka.x = 25;	
		ahomansikka.y = 40; 
		ahomansikka.visible = false;
		this.addChild(ahomansikka);       
		
		kanervaT = new Button(Assets.getLaatKasvi1().getTexture("tuntematon Kanerva")); //kasvi1 Tuntematon
		kanervaT.x = 160;
		kanervaT.y = 40; 
		this.addChild(kanervaT)
		
		kanerva = new Button(Assets.getLaatKasvi1().getTexture("Kanerva ")); //kasvi1
		kanerva.x = 160;
		kanerva.y = 40;       
		kanerva.visible = false;
		this.addChild(kanerva); 
		
		karpaloT =  new Button(Assets.getLaatKasvi1().getTexture("Tuntematon Karpalo")); //kasvi1 Tuntematon
		karpaloT.x = 25;	
		karpaloT.y = 140;
		this.addChild(karpaloT)
		
		karpalo =  new Button(Assets.getLaatKasvi1().getTexture("Karpalo ")); //kasvi1
		karpalo.x = 25;	
		karpalo.y = 140;
		karpalo.visible = false;
		this.addChild(karpalo);			
		
		kieloT =  new Button(Assets.getLaatKasvi2().getTexture("Tuntematon Kielo")); //kasvi2 Tuntematon
		kieloT.x = 160;	
		kieloT.y = 140;
		this.addChild(kieloT);
		
		
		kielo =  new Button(Assets.getLaatKasvi2().getTexture("Kielo")); //kasvi2
		kielo.x = 160;	
		kielo.y = 140;
		kielo.visible = false;
		this.addChild(kielo);	
		
		kaenkaaliT =  new Button(Assets.getLaatKasvi1().getTexture("tuntematon Käenkaali")); //kasvi1 Tuntematon
		kaenkaaliT.x = 25;	
		kaenkaaliT.y = 240;
		this.addChild(kaenkaaliT)
		
		kaenkaali =  new Button(Assets.getLaatKasvi1().getTexture("Käenkaali ")); //kasvi1
		kaenkaali.x = 25;	
		kaenkaali.y = 240;
		kaenkaali.visible = false;
		this.addChild(kaenkaali);	
		
		lakkaT =  new Button(Assets.getLaatKasvi1().getTexture("Tuntematon Lakka")); //kasvi1 Tuntematon
		lakkaT.x = 160;	
		lakkaT.y = 240;
		this.addChild(lakkaT)
		
		lakka =  new Button(Assets.getLaatKasvi1().getTexture("Lakka ")); //kasvi1
		lakka.x = 160;	
		lakka.y = 240;
		lakka.visible = false;
		this.addChild(lakka); 
		
		leskenlehtiT = new Button(Assets.getLaatKasvi3().getTexture("tuntLeskenlehti")); //kasvi3 Tuntematon
		leskenlehtiT.x = 25;	
		leskenlehtiT.y = 340;
		this.addChild(leskenlehtiT);
		
		leskenlehti = new Button(Assets.getLaatKasvi3().getTexture("Leskenlehti ")); //kasvi3
		leskenlehti.x = 25;	
		leskenlehti.y = 340;
		leskenlehti.visible = false;
		this.addChild(leskenlehti); 
		
		mustikkaT =  new Button(Assets.getLaatKasvi1().getTexture("Tuntematon Mustikka")); //kasvi1 Tuntematon
		mustikkaT.x = 160;	
		mustikkaT.y = 340;
		this.addChild(mustikkaT)
		
		mustikka =  new Button(Assets.getLaatKasvi1().getTexture("Mustikka ")); //kasvi1
		mustikka.x = 160;	
		mustikka.y = 340;
		mustikka.visible = false;
		this.addChild(mustikka);   //8 ========================================
		
		oravanmarjaT =  new Button(Assets.getLaatKasvi2().getTexture("Tunt Oravanmarja")); //kasvi2   Tuntematon
		oravanmarjaT.x = 25;
		oravanmarjaT.y = 40;
		this.addChild(oravanmarjaT)
		
		oravanmarja =  new Button(Assets.getLaatKasvi2().getTexture("Oravanmarja")); //kasvi2
		oravanmarja.x = 25;
		oravanmarja.y = 40;
		oravanmarja.visible = false;
		this.addChild(oravanmarja);
		
		piharatamoT =  new Button(Assets.getLaatKasvi2().getTexture("Tunt Piharatamo")); //kasvi2  Tuntematon
		piharatamoT.x = 160;	
		piharatamoT.y = 40;
		this.addChild(piharatamoT)
		
		piharatamo =  new Button(Assets.getLaatKasvi2().getTexture("Piharatamo")); //kasvi2
		piharatamo.x = 160;	
		piharatamo.y = 40;
		piharatamo.visible = false;
		this.addChild(piharatamo);
		
		punaapilaT =  new Button(Assets.getLaatKasvi2().getTexture("Tunt Puna-apila")); //kasvi2 Tuntematon
		punaapilaT.x = 25;	
		punaapilaT.y = 140;
		this.addChild(punaapilaT)
		
		punaapila =  new Button(Assets.getLaatKasvi2().getTexture("Puna-apila")); //kasvi2
		punaapila.x = 25;	
		punaapila.y = 140;
		punaapila.visible = false;
		this.addChild(punaapila);
		
		puolukkaT = new Button(Assets.getLaatKasvi1().getTexture("Tuntematon puolukka")); //kasvi1 Tuntematon
		puolukkaT.x = 160;	
		puolukkaT.y = 140;
		this.addChild(puolukkaT)
		
		puolukka = new Button(Assets.getLaatKasvi1().getTexture("Puolukka ")); //kasvi1
		puolukka.x = 160;	
		puolukka.y = 140;
		puolukka.visible = false;
		this.addChild(puolukka)
		
		paivankakkaraT = new Button(Assets.getLaatKasvi3().getTexture("tuntPäivänakkara")); //kasvi3 Tuntematon
		paivankakkaraT.x = 160;	
		paivankakkaraT.y = 240;
		this.addChild(puolukkaT)
			
		paivankakkara = new Button(Assets.getLaatKasvi3().getTexture("Päivänkakkara")); //kasvi3
		paivankakkara.x = 160;	
		paivankakkara.y = 240;
		paivankakkara.visible = false;
		this.addChild(paivankakkara)
		
		sinivuokkoT = new Button(Assets.getLaatKasvi1().getTexture("Tunt Sinivuokko")); //kasvi2 Tuntematn
		sinivuokkoT.x = 25;	
		sinivuokkoT.y = 240; 	
		this.addChild(sinivuokkoT)	
		
		sinivuokko = new Button(Assets.getLaatKasvi1().getTexture("Sinivuokko ")); //kasvi2 Tuntematon
		sinivuokko.x = 25;	
		sinivuokko.y = 240;                                           
		sinivuokko.visible = false;
		this.addChild(sinivuokko)
		
		vadelmaT = new Button(Assets.getLaatKasvi1().getTexture("Tuntematon Vadelma")); //kasvi1 Tuntematon
		vadelmaT.x = 25;
		vadelmaT.y = 340;
		this.addChild(vadelmaT)
		
		vadelma = new Button(Assets.getLaatKasvi1().getTexture("Vadelma")); //kasvi1
		vadelma.x = 25;
		vadelma.y = 340;
		vadelma.visible = false;
		this.addChild(vadelma)
		
		valkoapilaT = new Button(Assets.getLaatKasvi2().getTexture("Tuntematon Valkoapila")); //kasvi2 Tuntematon
		valkoapilaT.x = 160;	
		valkoapilaT.y = 340;
		this.addChild(valkoapilaT)	
		
		valkoapila = new Button(Assets.getLaatKasvi2().getTexture("Valkoapila")); //kasvi2
		valkoapila.x = 160;	
		valkoapila.y = 340;
		valkoapila.visible = false;  			// 8
		this.addChild(valkoapila)
		
		valkovuokkoT = new Button(Assets.getLaatKasvi2().getTexture("Tuntematon Valkovuokko")); //kasvi2 Tuntematon
		valkovuokkoT.x = 25;	 
		valkovuokkoT.y = 40;
		this.addChild(valkovuokkoT)
			
		valkovuokko = new Button(Assets.getLaatKasvi2().getTexture("Valkovuokko")); //kasvi2
		valkovuokko.x = 25;	
		valkovuokko.y = 40;
		valkovuokko.visible = false;	
		this.addChild(valkovuokko)
		
		voiKukkaT = new Button(Assets.getLaatKasvi2().getTexture("Tuntematon Voikukka"));  //kasvi2 Tuntematon
		voiKukkaT.x = 160;	
		voiKukkaT.y = 40;	
		this.addChild(voiKukkaT)
		
		voiKukka = new Button(Assets.getLaatKasvi2().getTexture("Voikukka"));  //kasvi2
		voiKukka.x = 160;	
		voiKukka.y = 40;
		voiKukka.visible = false;
		this.addChild(voiKukka)	
			
			
		lisaaKasveja = new Button(Assets.getLaatKasvi1().getTexture("KansioNappi")); 
		lisaaKasveja.x = 235;	
		lisaaKasveja.y = 420;
		this.addChild(lisaaKasveja)	
			
		lisaaKasveja2 = new Button(Assets.getLaatKasvi1().getTexture("LajiNappi")); 
		lisaaKasveja2.x = 235;	
		lisaaKasveja2.y = 450;
		lisaaKasveja2.visible = false;
		this.addChild(lisaaKasveja2)	
		
		takaisinKasveja = new Button(Assets.getLaatKasvi1().getTexture("LajiNappi")); 
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