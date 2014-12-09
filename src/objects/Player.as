package objects
{
	
	import flash.ui.Keyboard;

	import starling.core.Starling;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	import starling.events.Touch;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	
	public class Player extends Sprite
	{
	
		private var mainCharacter:Image;
		private var inGameCharacter:Player;
		private var mainCharacterLeft:Image;
		private var mainCharacterRight:Image;
		private var mainCharacterUp:Image;
		private var mainCharacterDown:Image;
		private var kavely:Boolean = false;
		private var mainCharacterInGame:Image;
		
		private var maxSpeed:Number = 5;
		private var xv:Number = 0;
		private var yv:Number = 0;

		
		
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
		playerArtOikea();
		playerArtVasen();
		playerArtTaka();
		playerArtEtu();
		}
		private function playerArt():void
		{	
		mainCharacter = new Image(Assets.getPaahenkilo().getTexture("etu1"));		 
		this.addChild(mainCharacter)
		mainCharacter.visible = true;
		}
		private function playerArtOikea():void
		{
		
		mainCharacterRight = new Image(Assets.getPaahenkilo().getTexture("ov1"));
		this.addChild(mainCharacterRight)
		mainCharacterRight.visible = false;
		}
		private function playerArtVasen():void
		{	
		mainCharacterLeft = new Image(Assets.getPaahenkilo().getTexture("vo1"));
		this.addChild(mainCharacterLeft)
		mainCharacterLeft.visible = false;
		}
		private function playerArtTaka():void
		{
		mainCharacterUp = new Image(Assets.getPaahenkilo().getTexture("taka1"));
		this.addChild(mainCharacterUp)
		mainCharacterUp.visible = false;
		}
		private function playerArtEtu():void
		{
		mainCharacterDown = new Image(Assets.getPaahenkilo().getTexture("etu1"));	
		this.addChild(mainCharacterDown);
		mainCharacterDown.visible = false;
		}
		private function handleKeyDown(event:KeyboardEvent):void
		{	
		if(event.keyCode == Keyboard.LEFT){						
		mainCharacterDown.visible = false;
		mainCharacterUp.visible = false;
		mainCharacter.visible = false
		mainCharacterRight.visible = true;
		kavely = true;
		x -= 5;	
		}else if(event.keyCode == Keyboard.RIGHT){			
		mainCharacterDown.visible = false;
		mainCharacterUp.visible = false;
		mainCharacter.visible = false
		mainCharacterLeft.visible = true;
		kavely = true;
		x += 5;
		}
		else if(event.keyCode == Keyboard.UP){	
		mainCharacterRight.visible = false;
		mainCharacterLeft.visible = false;
		mainCharacterDown.visible = false;
		mainCharacter.visible = false
		mainCharacterUp.visible = true;
		kavely = true;	
		y -= 5;
		}else if(event.keyCode == Keyboard.DOWN){	
		mainCharacterLeft.visible = false;
		mainCharacter.visible = false
		mainCharacterDown.visible = true;
		kavely = true;
		y += 5;
		}
		this.addChild(mainCharacter);
			
		}
	private function handleKeyUp(event:KeyboardEvent):void	
	{
		if(event.keyCode == Keyboard.LEFT){
			mainCharacter.visible = true;
			mainCharacterRight.visible = false;
			kavely = false;	
		 }else if(event.keyCode == Keyboard.RIGHT){	
			 mainCharacter.visible = true;
			 mainCharacterLeft.visible = false;
			 kavely = false;	 
		 }else if(event.keyCode == Keyboard.UP){		
			 mainCharacter.visible = true;
			 mainCharacterUp.visible = false;
			 kavely = false;
		 }else if(event.keyCode == Keyboard.DOWN){
			 mainCharacter.visible = true;
			 mainCharacterDown.visible = false;
			 kavely = false;
		 }
		}
	} 
} 
