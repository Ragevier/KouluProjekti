package screens
{
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class KansioSienet extends Sprite
	{
		public var kansionTausta:Image;

		public function KansioSienet()
		{
			
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage)
		}
		
		private function onAddedToStage(event:Event):void
		{
		this.addEventListener(Event.REMOVED_FROM_STAGE, onAddedToStage)
		
		kansionKuvat();	
		}
		
		private function kansionKuvat():void
		{
		kansionTausta = new Image(Assets.getTexture("KansioTyhj"));
		this.addChild(kansionTausta);
			
		}
	}
}