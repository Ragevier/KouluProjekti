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
		private var mainPlayer:MovieClip;
		private var speed:Number = 5;
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
		
		}			
	
		
	public function handleKeyDown(event:KeyboardEvent):void
	
	{
		if(event.keyCode == Keyboard.LEFT){
		// mainPlayer = new MovieClip(Assets.getAtlas().getTexture(" ")); //Spriten liikkumiset vasemmalle tähän	
			
			kavely = true;
			xv -= speed;
		}else if(event.keyCode == Keyboard.RIGHT){
		// mainPlayer = new MovieClip(Assets.getAtlas().getTexture(" ")); // Spriten liikkuminen oikealle tähän	
			kavely = true;
			xv += speed;
		}else if(event.keyCode == Keyboard.UP){
		// mainPlayer = new MovieClip(Assets.getAtlas().getTexture(" ")); // spriten liikkuminen ylöspäin tähän	
			kavely = true;
			yv -= speed;
		}else if(event.keyCode == Keyboard.DOWN){
		// mainPlayer = new MovieClip(Assets.getAtlas().getTexture(" ")); // Spriten liikkuminen alaspäin tähän	
			kavely = true;
			yv += speed
		}
		x += xv;
		y += yv;
	}
		private function handleKeyUp(event:KeyboardEvent):void
		{
		 if(event.keyCode == Keyboard.LEFT){
			// mainPlayer = new MovieClip(Assets.getAtlas().getTexture(" ")); // Idle animatio tähän
			 kavely = false;
			 x -= 0;
		 }else if(event.keyCode == Keyboard.RIGHT){
			// mainPlayer = new MovieClip(Assets.getAtlas().getTexture(" ")); // idle animato 
			 kavely = false;
			 x += 0;
		 }else if(event.keyCode == Keyboard.UP){
			// mainPlayer = new MovieClip(Assets.getAtlas().getTexture(" ")); // idle animatio
			 kavely = false;
			 y -= 0;  
		 }else if(event.keyCode == Keyboard.DOWN){
			 // mainPlayer = new MovieClip(Assets.getAtlas().getTexture(" ")); // idle animatio tähän
			 kavely = false;
			 y += 0;
		 }
		}
	}// Muista ylimääräinen Koodin pätkä 
}  

//if(key.isDown(Keyboard.LEFT)){
	//xv -= speed;
//x += xv;
//y += yv;	




