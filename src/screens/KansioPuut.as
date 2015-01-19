package screens
{
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class KansioPuut extends Sprite
	{
		public function KansioPuut()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage)
		}
		
		private function onAddedToStage(event:Event):void
		{
		this.removeEventListener(Event.REMOVED_FROM_STAGE, onAddedToStage)
			
		kansioKuvat()	
		}
		
		private function kansioKuvat():void
		{
			// TODO Auto Generated method stub
			
		}
	}
}