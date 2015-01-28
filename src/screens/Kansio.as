package screens
{
	import events.NavigationEvent;
	
	import flash.media.Sound;
	import flash.media.SoundMixer;
	import flash.ui.Keyboard;
	
	import objects.Puut;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	
	public class Kansio extends Sprite
	{
		public var kuva:Image;
		public var BgKansio:Image;
		public var muteBtnTwo:Button;
		public var takaisinPeliin:Button;
		public var muteBtn:Button;
		public var takaisinLajiValikko:Button;

		public var kuvaPuut:Puut;
		public var valikkoRuutu:Valikko;
		
		public var sienetLajit:Button;
		public var puutLajit:Button;
		public var kasvitLajit:Button;
		public var elaimetLajit:Button;
		
		public var lajiNappi:Button;
		
		
		public function Kansio()
		{
		 this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		this.addEventListener(KeyboardEvent.KEY_DOWN, keyboard)
		}
		
		private function keyboard(event:KeyboardEvent):void
		{
		if(event.keyCode == Keyboard.ESCAPE){
			
			if(event.keyCode == Keyboard.ESCAPE){
				if(valikkoRuutu.visible == false){
					valikkoRuutu.visible = true
				}else{valikkoRuutu.visible = false}
		}		
		}
		}
		private function onAddedToStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);	
			drawKansio();	
		}

		private function drawKansio():void
		{
			
		BgKansio = new Image(Assets.getTexture("KansioTyhj")); 
		this.addChild(BgKansio)
		
		sienetLajit = new Button(Assets.getTexture("sienetLaji"));  
		this.addChild(sienetLajit)
		sienetLajit.x = 25;	
		sienetLajit.y = 40;
		
		kasvitLajit = new Button(Assets.getTexture("kasvitLaji")); 
		this.addChild(kasvitLajit)
		kasvitLajit.x = 160;	
		kasvitLajit.y = 40;
		
		puutLajit = new Button(Assets.getTexture("puutLaji")); 
		this.addChild(puutLajit)
		puutLajit.x = 160;	
		puutLajit.y = 175;
		
		//elaimetLajit = new Button(Assets.getTexture("elainLaji")); 
	//	this.addChild(elaimetLajit)
	//	elaimetLajit.x = 25;	
	//	elaimetLajit.y = 140;
		
		
		takaisinPeliin = new Button(Assets.getTakaisinNappi().getTexture("Takaisin_nappi0000"));
		this.addChild(takaisinPeliin);
		takaisinPeliin.x = 230;		
		takaisinPeliin.y = 20;		
	
		valikkoRuutu = new Valikko;
		valikkoRuutu.visible = false;
		this.addChild(valikkoRuutu)
			
		this.addEventListener(Event.TRIGGERED, kansioMenuClick)	
		this.addEventListener(Event.TRIGGERED, kasviKuviin)
		this.addEventListener(Event.TRIGGERED, sienetKuvat)
		//this.addEventListener(Event.TRIGGERED, elainKuvat)
		this.addEventListener(Event.TRIGGERED, puutKuviin)
		}	
		
		private function puutKuviin(event:Event):void
		{
		var buttonClicked:Button = event.target as Button;
		if((buttonClicked as Button) == puutLajit){
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"puutlaji"}, true));			
		}
		}
		//private function elainKuvat(event:Event):void
		//{	
	//		var buttonClicked:Button = event.target as Button;
	//		if((buttonClicked as Button) == elaimetLajit){
	//		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"elainLaji"}, true));
	//	}
	//	}
		
		private function sienetKuvat(event:Event):void
		{
			var buttonClicked:Button = event.target as Button;
			if((buttonClicked as Button) == sienetLajit){
			
			this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"sienetLaji"}, true));
		}
		}
		private function kasviKuviin(event:Event):void
		{
		var buttonClicked:Button = event.target as Button;   //kasvitlajit
		if((buttonClicked as Button) == kasvitLajit){									
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"kasvitLaji"}, true));		
		}
		}
		
		private function kansioMenuClick(event:Event):void
		{
		var ButtonClicked:Button = event.target as Button;
		if((ButtonClicked as Button) == takaisinPeliin)
		{		
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"ReturnBtn"}, true));     
		SoundMixer.stopAll()			
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