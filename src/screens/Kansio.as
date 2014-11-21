package screens
{
	import events.NavigationEvent;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.errors.AbstractClassError;
	import starling.events.Event;
	
	public class Kansio extends Sprite
	{
		
		public var BgKansio:Image;
		public var LajiNappi:Button;
		public var TakaisinPeliin:Button;
		public var muteBtn:Button;
		
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
		
		LajiNappi = new Button(Assets.getTexture("LajiNappi")); 
		this.addChild(LajiNappi)
		LajiNappi.x = 20;	
		LajiNappi.y = 20;
		
		TakaisinPeliin = new Button(Assets.getTexture("ReturnBtn"));     
		this.addChild(TakaisinPeliin);
		TakaisinPeliin.x = 598;		
		TakaisinPeliin.y = 20;		
		
		muteBtn = new Button(Assets.getTexture("muteNappi"));
		this.addChild(muteBtn);
		muteBtn.x = 20;
		muteBtn.y = 450;
		
		this.addEventListener(Event.TRIGGERED, kansioMenuClick)
		this.addEventListener(Event.TRIGGERED, onSoundMute)
		
		}	
		private function onSoundMute(event:Event):void
		{
		this.dispatchEvent(new NavigationEvent(NavigationEvent.SOUND_MUTE,{id:"muteNappi"}, true));
		
		}
		private function kansioMenuClick(event:Event):void
		{
		var ButtonClicked:Button = event.target as Button;
		if((ButtonClicked as Button) == TakaisinPeliin)
		{
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN,{id:"ReturnBtn"}, true));     
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