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
		public var lajiNappi:Button;
		public var takaisinPeliin:Button;
		public var muteBtn:Button;
		public var takaisinLajiValikko:Button;

		public var kuvaPuut:Puut;
		public var valikkoRuutu:Valikko;
		
		
		public function Kansio()
		{
		 this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		this.addEventListener(starling.events.KeyboardEvent.KEY_DOWN, keyboard)
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
		
		lajiNappi = new Button(Assets.getTexture("LajiNappi")); // laji napit vaihdettava lajien oikeisiin meno napeihin
		this.addChild(lajiNappi)
		lajiNappi.x = 25;	
		lajiNappi.y = 40;
		
		lajiNappi = new Button(Assets.getTexture("LajiNappi")); 
		this.addChild(lajiNappi)
		lajiNappi.x = 160;	
		lajiNappi.y = 40;
		
		lajiNappi = new Button(Assets.getTexture("LajiNappi")); 
		this.addChild(lajiNappi)
		lajiNappi.x = 25;	
		lajiNappi.y = 140;
		
		lajiNappi = new Button(Assets.getTexture("LajiNappi")); 
		this.addChild(lajiNappi)
		lajiNappi.x = 160;	
		lajiNappi.y = 140;
		
		lajiNappi = new Button(Assets.getTexture("LajiNappi")); 
		this.addChild(lajiNappi)
		lajiNappi.x = 25;	
		lajiNappi.y = 240;
		
		lajiNappi = new Button(Assets.getTexture("LajiNappi")); 
		this.addChild(lajiNappi)
		lajiNappi.x = 160;	
		lajiNappi.y = 240;
		
		lajiNappi = new Button(Assets.getTexture("LajiNappi")); 	// laji napit vaihdettava lajien oikeisiin meno napeihin
		this.addChild(lajiNappi)
		lajiNappi.x = 25;	
		lajiNappi.y = 340;
		    
		takaisinPeliin = new Button(Assets.getTakaisinNappi().getTexture("Takaisin_nappi0000"));
		this.addChild(takaisinPeliin);
		takaisinPeliin.x = 230;		
		takaisinPeliin.y = 20;		
	
		valikkoRuutu = new Valikko;
		valikkoRuutu.visible = false;
		this.addChild(valikkoRuutu)
			
		this.addEventListener(Event.TRIGGERED, kansioMenuClick)	
		this.addEventListener(Event.TRIGGERED, kasviKuviin)
		}	
		
		private function kasviKuviin(event:Event):void
		{
		var buttonClicked:Button = event.target as Button;
		if((buttonClicked as Button) == lajiNappi){
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"LajiNappi"}, true));
			
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