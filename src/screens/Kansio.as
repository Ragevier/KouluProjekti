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
		BgKansio = new Image(Assets.getTexture("KansioTyhj")); //Kansion tausta emboded class   Assets.getAtlas().getTexture spritejen kanssa
		this.addChild(BgKansio)
		
		LajiNappi = new Button(Assets.getTexture("LajiNappi")); //tilalle Napin oikea class nimi 
		this.addChild(LajiNappi)
		LajiNappi.x = 20;	//  Pitää muokata
		LajiNappi.y = 20;
		
		TakaisinPeliin = new Button(Assets.getTexture("ReturnBtn"));     
		this.addChild(TakaisinPeliin)
		TakaisinPeliin.x = 598;		// pitää asettaa paremmin
		TakaisinPeliin.y = 20;		// pitää asettaa paremmin
		
		this.addEventListener(Event.TRIGGERED, kansioMenuClick)
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