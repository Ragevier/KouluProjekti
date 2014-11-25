package screens
{
	import events.NavigationEvent;
	
	import flash.media.Sound;
	import flash.media.SoundMixer;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	
	import starling.events.Event;
	
	public class Kansio extends Sprite
	{
		
		public var BgKansio:Image;
		public var LajiNappi:Button;
		public var takaisinPeliin:Button;
		public var muteBtn:Button;
		public var takaisinLajiValikko:Button;
		
		public function Kansio()
		{
		 this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
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
		
		LajiNappi = new Button(Assets.getTexture("LajiNappi")); // laji napit vaihdettava lajien oikeisiin meno napeihin
		this.addChild(LajiNappi)
		LajiNappi.x = 25;	
		LajiNappi.y = 40;
		
		LajiNappi = new Button(Assets.getTexture("LajiNappi")); 
		this.addChild(LajiNappi)
		LajiNappi.x = 160;	
		LajiNappi.y = 40;
		
		LajiNappi = new Button(Assets.getTexture("LajiNappi")); 
		this.addChild(LajiNappi)
		LajiNappi.x = 25;	
		LajiNappi.y = 140;
		
		LajiNappi = new Button(Assets.getTexture("LajiNappi")); 
		this.addChild(LajiNappi)
		LajiNappi.x = 160;	
		LajiNappi.y = 140;
		
		LajiNappi = new Button(Assets.getTexture("LajiNappi")); 
		this.addChild(LajiNappi)
		LajiNappi.x = 25;	
		LajiNappi.y = 240;
		
		LajiNappi = new Button(Assets.getTexture("LajiNappi")); 
		this.addChild(LajiNappi)
		LajiNappi.x = 160;	
		LajiNappi.y = 240;
		
		LajiNappi = new Button(Assets.getTexture("LajiNappi")); 	// laji napit vaihdettava lajien oikeisiin meno napeihin
		this.addChild(LajiNappi)
		LajiNappi.x = 25;	
		LajiNappi.y = 340;
		
		takaisinPeliin = new Button(Assets.getTexture("ReturnBtn"));     
		this.addChild(takaisinPeliin);
		takaisinPeliin.x = 598;		
		takaisinPeliin.y = 20;		
		
		muteBtn = new Button(Assets.getTexture("lajiValikko"));
		this.addChild(muteBtn);
		muteBtn.x = 20;
		muteBtn.y = 450;
		
		muteBtn = new Button(Assets.getTexture("muteNappi"));
		this.addChild(muteBtn);
		muteBtn.x = 20;
		muteBtn.y = 450;
		
		this.addEventListener(Event.TRIGGERED, kansioMenuClick)
		this.addEventListener(Event.TRIGGERED, takaisinLajeihin)
		}	
		private function takaisinLajeihin(event:Event):void
		{
		var ButtonClicked:Button = event.target as Button;
		if((ButtonClicked as Button) == muteBtn)	
		{	
		
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN,{id:"muteNappi"}, true)); 
		SoundMixer.stopAll()	
		}
		}	
		private function kansioMenuClick(event:Event):void
		{
		var ButtonClicked:Button = event.target as Button;
		if((ButtonClicked as Button) == takaisinPeliin)
		{
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"ReturnBtn"}, true));     
		SoundMixer.stopAll();
		if (!Sounds.muted)Sounds.peliMusiikki.play();	
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