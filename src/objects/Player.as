package objects
{
	import flash.geom.Rectangle;
	import flash.ui.Keyboard;
	
	import objects.Puut;
	
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
		
		private var hitIn:Boolean;
		private var hitting:Boolean;
		private var kPuut:Puut
		private var maxSpeed:Number = 6;
		private var noSpeed:Number = 0;
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
		public function playerArt():void
		{	
		mainCharacter = new Image(Assets.getPaahenkilo().getTexture("etu1"));		 
		this.addChild(mainCharacter)
		mainCharacter.visible = true;
		}
		public function playerArtOikea():void
		{
		
		mainCharacterRight = new Image(Assets.getPaahenkilo().getTexture("ov1"));
		this.addChild(mainCharacterRight)
		mainCharacterRight.visible = false;
		}
		public function playerArtVasen():void
		{	
		mainCharacterLeft = new Image(Assets.getPaahenkilo().getTexture("vo1"));
		this.addChild(mainCharacterLeft)
		mainCharacterLeft.visible = false;
		}
		public function playerArtTaka():void
		{
		mainCharacterUp = new Image(Assets.getPaahenkilo().getTexture("taka1"));
		this.addChild(mainCharacterUp)
		mainCharacterUp.visible = false;
		}
		public function playerArtEtu():void
		{
		mainCharacterDown = new Image(Assets.getPaahenkilo().getTexture("etu1"));	
		this.addChild(mainCharacterDown);
		mainCharacterDown.visible = false;
		}
		public function handleKeyDown(event:KeyboardEvent):void
		{	
		if(event.keyCode == Keyboard.LEFT){						
		mainCharacterDown.visible = false;
		mainCharacterUp.visible = false;
		mainCharacter.visible = false
		mainCharacterLeft.visible = false;
		mainCharacterRight.visible = true;
		kavely = true;
	//	x -= maxSpeed;	
		}else if(event.keyCode == Keyboard.RIGHT){			
		mainCharacterRight.visible = false;
		mainCharacterDown.visible = false;
		mainCharacterUp.visible = false;
		mainCharacter.visible = false
		mainCharacterLeft.visible = true;
		kavely = true;
	//	x += maxSpeed;
		}
		else if(event.keyCode == Keyboard.UP){	
		mainCharacterRight.visible = false;
		mainCharacterLeft.visible = false;
		mainCharacterDown.visible = false;
		mainCharacter.visible = false;
		mainCharacterUp.visible = true;
		kavely = true;	
	//	y -= maxSpeed;
		}else if(event.keyCode == Keyboard.DOWN){	
		mainCharacterUp.visible = false;
		mainCharacterRight.visible = false;
		mainCharacterLeft.visible = false;
		mainCharacter.visible = false;
		mainCharacterDown.visible = true;
		kavely = true;
	//	y += maxSpeed;
		}
		this.addChild(mainCharacter);	
		}
	private function handleKeyUp(event:KeyboardEvent):void	
	{
		if(event.keyCode == Keyboard.LEFT){
			mainCharacter.visible = false;
			mainCharacterLeft.visible = false;
			mainCharacterDown.visible = false;
			mainCharacterUp.visible = false;
			mainCharacterRight.visible = true;
			kavely = false;	
		 }else if(event.keyCode == Keyboard.RIGHT){	
			 mainCharacter.visible = false;
			 mainCharacterRight.visible = false;
			 mainCharacterUp.visible = false;
			 mainCharacterDown.visible = false; 
			 mainCharacterLeft.visible = true;
			 kavely = false;	 
		 }else if(event.keyCode == Keyboard.UP){		
			 mainCharacter.visible = false;
			 mainCharacterLeft.visible = false;
			 mainCharacterRight.visible = false;
			mainCharacterDown.visible = false;
			 mainCharacterUp.visible = true;
			 kavely = false;
		 }else if(event.keyCode == Keyboard.DOWN){
			 mainCharacterLeft.visible = false;
			 mainCharacterRight.visible = false;
			 mainCharacter.visible = false;
			 mainCharacterUp.visible = false;
			 mainCharacterDown.visible = true;
			 kavely = false;
		 }
		}	
	}
} 
