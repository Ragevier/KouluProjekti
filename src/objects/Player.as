package objects
{
	
	import flash.ui.Keyboard;
	
	import starling.display.Image;
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	
	
	
	public class Player extends Sprite
	{
		private var mainPlayer:Image;
		private var speed:Number = 5;
		private var minSpeed:Number = 0;
		private var xv:Number = 0;
		private var yv:Number = 0;
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
			mainPlayer = new Image(Assets.getAtlas().getTexture("mainCharacter"));
		}
		
	public function handleKeyDown(event:KeyboardEvent):void
	
	{
		if(event.keyCode == Keyboard.LEFT){	
			mainPlayer = Image(Assets.getAtlas().getTexture("mainCharacter ")); // Vasemmalle
			kavely = true;
			xv -= speed;
		}else if(event.keyCode == Keyboard.RIGHT){
			mainPlayer = Image(Assets.getAtlas().getTexture("mainCharacter")); //oikealle
			kavely = true;
			xv += speed;
		}else if(event.keyCode == Keyboard.UP){
			mainPlayer = Image(Assets.getAtlas().getTexture("mainCharacter")); //ylöspäin
			kavely = true;
			yv -= speed;
		}else if(event.keyCode == Keyboard.DOWN){
			mainPlayer = Image(Assets.getAtlas().getTexture("mainCharacter")); // Alaspäin
			kavely = true;
			yv += speed;
		}
	}
		private function handleKeyUp(event:KeyboardEvent):void
		{
		 if(event.keyCode == Keyboard.LEFT){
		mainPlayer = Image(Assets.getAtlas().getTexture("mainCharacter"));	
			 kavely = false;
			 x -= minSpeed;
		 }else if(event.keyCode == Keyboard.RIGHT){	
		mainPlayer = Image(Assets.getAtlas().getTexture("mainCharacter"));
			 kavely = false;
			 x += minSpeed;
		 }else if(event.keyCode == Keyboard.UP){		
		mainPlayer = Image(Assets.getAtlas().getTexture("mainCharacter"));
			 kavely = false;
			 y -= minSpeed;  
		 }else if(event.keyCode == Keyboard.DOWN){
			mainPlayer = Image(Assets.getAtlas().getTexture("mainCharacter")); 
			 kavely = false;
			 y += minSpeed;
		 }
		}
	}
}  






