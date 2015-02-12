package screens
{
	import events.NavigationEvent;
	
	import flash.ui.Keyboard;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	
	public class KansioElaimet extends Sprite
	{
		public var kansioTausta:Image;
		
		public var kansionTausta:Image;
		public var valikkoRuutu:Valikko;
		
		public var harakka1:Button;
		public var hiiri1:Button;
		public var ikalavo:Button;
		public var pkalavo:Button;
		public var janisov1:Button;
		public var msorsa:Button;
		public var nsorsa:Button;
		public var muurahaiskeko:Button;
		public var muurahaiset1:Button;
		public var orava1:Button;
		public var perhonen:Button;
		public var rastas1:Button;
		public var siiliov1:Button;
		public var sudenkorento_ylos1:Button;
		public var varis1:Button;
		
		
		public var harakka1T:Button;
		public var hiiri1T:Button;
		public var ikalavoT:Button;
		public var pkalavoT:Button;
		public var janisov1T:Button;
		public var msorsaT:Button;
		public var nsorsaT:Button;
		public var muurahaiskekoT:Button;
		public var muurahaiset1T:Button;
		public var orava1T:Button;
		public var perhonenT:Button;
		public var rastas1T:Button;
		public var siiliov1T:Button;
		public var sudenkorento_ylos1T:Button;
		public var varis1T:Button;
		
		
		
		
		
		
		public function KansioElaimet()
		{
			
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage)	
			this.addEventListener(starling.events.KeyboardEvent. KEY_DOWN, keyboard)
				
			private function keyboard(event:KeyboardEvent):void	
			{
				if(event.keyCode == Keyboard.ESCAPE){
				if(valikkoRuutu.visible == false){
				valikkoRuutu.visible = true
				}else{valikkoRuutu.visible = false}	
				}
				}
			
			
			
			
			private function onAddedToStage(event:Event):void
			{
				
			this.removeEventListener(Event.REMOVED_FROM_STAGE, onAddedToStage)
			kansionKuvat();
			}
			
		public function kansionKuvat():void
		{
			kansionTausta = new Image(Assets.getTexture("kansiotyhja"));
			this.addChild(kansionTausta);
			
			harakka1T = new Button(Assets.getLaatElaimet().getTexture("Tunt Harakka"));
			harakka1T.x = ;
			harakka1T.y = ;
			this.addChild(harakka1T)
				
			harakka1= new Button(.getLaatElaimet().getTexture("Harakka"));
			harakka1.x = ;
			harakka1.y = ;
			harakka1.visible = false;
			this.addChild(harakka1);
			
			hiiri1T = new Button(Assets.getLaatElaimet().getTexture("Tunt Hiiri"));
			hiiri1T.x = ;
			hiiri1T.y = ;
			this.addChild(hiiri1T)
				
			hiiri1 = new Button(Assets.getLaatElaimet().getTexture("Hiiri"));
			hiiri1.x = ;
			hiiri1.y = ;
			hiiri1.visible = false;
			this.addChild(hiiri1);
			
			ikalavoT = new Button(Assets.getLaatElaimet().getTexture("Tunt Hauki"));
			ikalavoT.x = ;
			ikalavoT.y = ;
			this.addChild(ikalavoT)
				
			ikalavo = new Button(Assets.getLaatElaimet().getTexture("Hauki"));
			ikalavo.x = ;
			ikalavo.y = ;
			ikalavo.visible = false;
			this.addChild(ikalavo);
			
			pkalavoT = new Button(Assets.getLaatElaimet().getTexture("Tunt Ahven"));
			pkalavoT.x = ;
			pkalavoT.y = ;
			this.addChild(pkalavoT)
				
			pkalavo = new Button(Assets.getLaaElaimet().getTexture("Ahven"));
			pkalavo.x = ;
			pkalavo.y = ;
			pkalavo.visible = false;
			this.addChild(pkalavo);
			
			janisov1T = new Button(Assets.getLaatElaimet().getTexture("Tunt Jänis"));
			janisov1T.x = ;
			janisov1T.y = ;
			this.addChild(janisov1T)
				
			janisov1 = new Button(Assets.getLaatElaimet().getTexture("Jänis"));	
			janisov1.x = ;
			janisov1.y = ;
			janisov1.visible = false;
			this.addChild(janisov1);
			
			msorsaT = new Button(Assets.getLaatElaimet().getTexture("Tunt SorsaM"));
			msorsaT.x = ;
			msorsaT.y = ;
			this.addChild(msorsaT)
				
			msorsa = new Button(Assets.getLaatElaimet().getTexture("Sinisorsa M"));
			msorsa.x = ;
			msorsa.y = ;
			msorsa.visible = false;
			this.addChild(msorsa);
			
			nsorsaT = new Button(Assets.getLaatElaimet().getTexture("Tunt SorsaN"));
			nsorsaT.x = ;
			nsorsaT.y = ;
			this.addChild(nsorsaT)
				
			nsorsa = new Button(Assets.getLaatElaimet().getTexture("SinisorsaN"));
			nsorsa.x = ;
			nsorsa,y = ;
			nsorsa.visible = false;
			this.addChild(nsorsa);
			
			muurahaiset1T = new Button(Assets.getLaatElaimet().getTexture("Tunt Muurahainen"));
			muurahaiset1T.x = ;
			muurahaiset1T.y = ;
			this.addChild(muurahaiset1T)
				
			muurahaiset1 = New Button(Assets.getLaatElaimet().getTexture("Muurahainen"));
			muurahaiset1.x = ;
			muurahaiset1.y = ;
			muurahaiset1.visible = false:
			this.addChild(muurahaiset1);
			
			orava1T = new Button(Assets.getLaatElaimet().getTexture("Tunt Orava"));
			orava1T.x = ;
			orava1T.y = ;
			this.addChild(orava1T)
				
			orava1 = new Button(Assets.getLaatElaimet().getTexture("Orava"));
			orava1.x = ;
			orava1.y = ;
			orava1.visible = false;
			this.addChild(orava1);
			
			perhonenT = new Button(Assets.getLaatElaimet().getTexture("Tunt Perhonen"));
			perhonenT.x = ;
			perhonenT.y = ;
			this.addChild(perhonenT)
			
			perhonen = new Button(Assets.getLaatElaimet().getTexture("Nokkosperhonen"));
			perhonen.x = ;
			perhonen.y = ;
			perhonen.visible = false;
			this.addChild(perhonen);
			
			rastas1T = new Button(Assets.getLaatElaimet().getTexture("Tunt Rastas"));
			rastas1T.x = ;
			rastas1T.y = ;
			this.addChild(rastas1T)
				
			rastas1 = new Button(Assets.getLaatElaimet().getTexture("Rastas"));
			rastas1.x = ;
			rastas1.y = ;
			rastas1.visible = false;
			this.addChild(rastas1);
		
			siiliov1T = new Button(Assets.getLaatElaimet().getTexture("Tunt Siili"));
			siiliov1T.x = ;
			siiliov1T.y = ;
			this.addChild(siiliov1T)
				
			siiliov1 = new Button(Assets.getLaatElaimet().getTexture("Siili"));
			siiliov1.x = ;
			siiliov1.y = ;
			siiliov1.visible = false;
			this.addChild(siiliov1);
			
			sudenkorento_ylos1T = new Button(Assets.getLaatElaimet().getTexture("Tunt Sudenkorento"));
			sudenkorento_ylos1T.x = ;
			sudenkorento_ylos1T.y = ;
			this.addChild(sudenkorento_ylos1T)
				
			sudenkorento_ylos1 = new Button(Assets.getLaatElaimet().getTexture("Sudenkorento"));
			sudenkorento_ylos1.x = ;
			sudenkorento_ylos1.y = ;
			sudenkorento_ylos1.visible = false;
			this.addChild(sudenkorento_ylos1);
			
			varis1T = new Button(Assets.getLaatElaimet().getTexture("Tunt Varis"));
			varis1T.x = ;
			varis1T.y = ;
			this.addChild(varis1T)
				
			varis1 = new Button(Assets.getLaatElaimet().getTexture("Varis"));
			varis1.x = ;
			varis1.y = ;
			varis1.visible = false;
			this.addChild(varis1);
			
			valikkoRuutu = new Valikko:
			valikkoRuutu.visible = false;
			this.addChild(valikkoRuutu)
			
			
		
		
			
			
			
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
	

	
	
	
	
	
	
	
	