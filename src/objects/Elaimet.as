package objects
{
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	
	public class Elaimet extends Sprite
	{
		public function Elaimet()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage)
		this.addEventListener(starling.events.TouchEvent, onTouch)
		}
		
		private function onTouch(te:TouchEvent):void
		{
		if(te.getTouch(this, TouchPhase.BEGAN){
			//eläinten kuvat tähääääääää tai mitälie kuvia
		}
		}
		
		private function onAddedToStage(event:Event):void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage)
		elainArt();
		}
		
		private function elainArt():void
		{
		//kuvat tähän
			
		}
	}
}