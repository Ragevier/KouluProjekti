package objects
{
	
	import com.senocular.utils.KeyObject;
	
	import flash.ui.Keyboard;
	
	import starling.display.Image;
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	
	
	
	public class Player extends Sprite
	{
		private var playerArt:Image;
		private var key:KeyObject;
		private var speed:Number = 5;
		private var xv:Number = 0;
		private var yv:Number = 0;
	

		
		public function Player()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		CreatePlayerArt();

		}		
		
		private function CreatePlayerArt():void
		{
		//playerArt = new MovieClip(Assets.getAtlas().getTexture("")); //päähenkilö tähä sprite
			
			if(key.isDown(Keyboard.LEFT)){
				xv -= speed;
			}
			else if(key.isDown(Keyboard.RIGHT)){
				xv += speed;
			}else if(key.isDown(Keyboard.UP)){
				yv -= speed;
			}else if(key.isDown(Keyboard.DOWN)){
				yv += speed;		
			}
			x += xv;
			y += yv;	
			rotation = xv
			
		}
	}
}