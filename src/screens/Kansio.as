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
		public var KansioNappi:Button
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
		BgKansio = new Image(Assets.getTexture("Bgkansio")); //Kansion tausta emboded class
		this.addChild(BgKansio)
		
		LajiNappi = new Button(Assets.getAtlas().getTexture("LajiNappi")); // Laji napin tilalle Napin oikea class nimi 
		this.addChild(LajiNappi)
		LajiNappi.x = 20;
		LajiNappi.y = 20;
		
		}
		
		private function onInGameClick(event:Event):void
		{
		var ButtonClicked:Button = event.target as Button;
		if((ButtonClicked as Button) == KansioNappi)
		{
			this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN,{id:"Napin nimi"}, true));      // Muokkaus tiedossa luultavimmin
		}
		}
	}
}