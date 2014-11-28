package objects
{
	
	import flash.ui.Keyboard;
	
	import starling.core.Starling;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	import starling.events.TouchEvent;
	
	
	public class Player extends Sprite
	{
		
		private var mainCharacterIdle:Image;
		private var mainCharacter:Image;
		private var speed:Number = 10;
		
		private var kavely:Boolean = false;
		
		public function Player()
		{
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		this.addEventListener(KeyboardEvent.KEY_DOWN, handleKeyDown);
		this.addEventListener(KeyboardEvent.KEY_UP, handleKeyUp);
		this.addEventListener(TouchEvent.TOUCH, mouseControl);
		}	
		
		private function onAddedToStage(event:Event):void
		{
		this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		playerArt();	
		}			
		private function playerArt():void
		{
		mainCharacter = new Image(Assets.getPaahenkilo().getTexture("etu1"));	
		this.addChild(mainCharacter);	
		}
		public function handleKeyDown(event:KeyboardEvent):void
		{
		if(event.keyCode == Keyboard.LEFT){						
		mainCharacter = Image(Assets.getPaahenkilo().getTexture("taka1"));	
		this.addChild(mainCharacter);
		kavely = true;
		x -= 10;
		}else if(event.keyCode == Keyboard.RIGHT){		
		mainCharacter = Image(Assets.getPaahenkilo().getTexture("ov1"));
		this.addChild(mainCharacter);
		kavely = true;
		x += 10;
		}else if(event.keyCode == Keyboard.UP){
		mainCharacter = Image(Assets.getPaahenkilo().getTexture("vo1"));
		this.addChild(mainCharacter);
		kavely = true;	
		y -= 10;
		}else if(event.keyCode == Keyboard.DOWN){
		mainCharacter = Image(Assets.getPaahenkilo().getTexture("taka1"));
		this.addChild(mainCharacter);
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
		private function mouseControl(event:TouchEvent):void
		{
			
		}
	}
}  






