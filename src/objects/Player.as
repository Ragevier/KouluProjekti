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
		
		private function onAddedToStage(e:Event):void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}		
		public function MainPlayer():void
		{
		if((Keyboard.LEFT)){
			x -= 2;
		}else if((Keyboard.RIGHT){
			x += 2;
		}else if ((Keyboard.UP){
			y -= 2;
		}else if ((Keyboard.DOWN)){
			y += 2;
		}
		}
	}
}