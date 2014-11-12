package objects
{
	import com.senocular.utils.KeyObject;
	
	import flash.ui.Keyboard;
	
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Player extends Sprite
	{
		private var MainPlayerArt:MovieClip
		private var Key:KeyObject
		private var speed:Number = 5;
		private var maxSpeed:Number = 4;
		
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
		if((Keyboard.LEFT)){
			x -= speed;
		}else if((Keyboard.RIGHT){
			x += speed;
		}else if ((Keyboard.UP){
			y -= speed;
		}else if ((Keyboard.DOWN)){
			y += speed;
			}
		}
	}
}