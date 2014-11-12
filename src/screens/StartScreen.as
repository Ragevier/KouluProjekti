package screens
{
	import events.NavigationEvent;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
		
	public class StartScreen extends Sprite
	{
		private var bgImage:Image
		
			
		public function StartScreen()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		private function onAddedToStage(e:Event):void
		{
		drawscreen();
		}
		
		private function drawscreen():void
		{
			this.addEventListener(Event.TRIGGERED, onMainMenuClick)
		}
	} private function onMainMenuClick (event:Event):void
	{
	var buttonClicked:Button = event.target as Button;
	if ((buttonClicked as Button) == ; //peliin meno nappi ennen ;
		{
		this.DispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"play"}, true)); 
		}
	}
	private function DisposeTemporarily():void
	{
		this.visible = false
		
		if(this.hasEventListener(Event.ENTER_FRAME)) this.removeEventListener(Event.ADDED_TO_STAGE,)
	}
}