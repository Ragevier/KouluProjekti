package screens
{
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class InGame extends Sprite
	
	{
		public function InGame()
		{
		
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);	
			drawGame();
		}
		
		private function drawGame():void
		{
			
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