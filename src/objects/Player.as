package objects
{

	
	import flash.ui.Keyboard;
	
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	
	
	public class Player extends Sprite
	{
		private var MainPlayerArt:MovieClip
		
		public function Player()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}		
		public function MainPlayer():void
		{					
		
		}
		}
	}
