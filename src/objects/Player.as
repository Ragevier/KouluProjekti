package objects
{
	
	import flash.ui.Keyboard;
	
	import starling.core.Starling;
	import starling.display.Image;
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	
	
	
	public class Player extends Sprite
	{
		private var mainCharacter:Image;
		private var kavely:Boolean = false;
		
		public function Player()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		this.addEventListener(KeyboardEvent.KEY_DOWN, handleKeyDown);
		this.addEventListener(KeyboardEvent.KEY_UP, handleKeyUp);
		}	
		private function onAddedToStage(event:Event):void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		playerArt();
		}			
		private function playerArt():void
		{
		mainCharacter = new Image(Assets.getTexture("paahenkilo"));	
		this.addChild(mainCharacter);	
		}
		public function handleKeyDown(event:KeyboardEvent):void
		{
		if(event.keyCode == Keyboard.LEFT){					
			kavely = true;
			x -= 10;
		}else if(event.keyCode == Keyboard.RIGHT){		
		kavely = true;
			x += 10;
		}else if(event.keyCode == Keyboard.UP){
		kavely = true;
			y -= 10;
		}else if(event.keyCode == Keyboard.DOWN){
		kavely = true;
			y += 10;	
		}	 
		}
		private function handleKeyUp(event:KeyboardEvent):void
		{
		 if(event.keyCode == Keyboard.LEFT){
			 kavely = false;	
		 }else if(event.keyCode == Keyboard.RIGHT){	
			 kavely = false;	 
		 }else if(event.keyCode == Keyboard.UP){		
			 kavely = false;
		 }else if(event.keyCode == Keyboard.DOWN){
			 kavely = false;
		 }
		}
	}
}  






