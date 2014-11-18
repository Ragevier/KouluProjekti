package screens
{
	import events.NavigationEvent;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Kansio extends Sprite
	{
		
		public var BgKansio:Image;
		public var TakaisinPeliin:Button
		public var LajiNappi:Button
		
		
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
		BgKansio = new Image(Assets.getTexture("KansioTyhj")); //Kansion tausta emboded class
		this.addChild(BgKansio)
		
		LajiNappi = new Button(Assets.getTexture("AlotusNappi")); // Laji napin tilalle Napin oikea class nimi 
		this.addChild(LajiNappi)
		LajiNappi.x = 20;		// pitää asettaa paremmin
		LajiNappi.y = 20;		// pitää asettaa paremmin
		
		TakaisinPeliin = new Button(Assets.getTexture("KansioNappi"));     
		this.addChild(TakaisinPeliin)
		TakaisinPeliin.x = 640;	//  Pitää muokata
		TakaisinPeliin.y = 480;   // Pitää Muokata
		
		this.addEventListener(Event.TRIGGERED, kansioMenuClick)
		}
		
		private function kansioMenuClick(event:Event):void
		{
		var ButtonClicked:Button = event.target as Button;
		if((ButtonClicked as Button) == TakaisinPeliin)
		{
			this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN,{id:""}, true));     
		}	
	}
		public function hideTemporarily():void
		{
			this.visible = false;
		}
		public function kinitialize():void
		{
			this.visible = true;
		}
	}
}	