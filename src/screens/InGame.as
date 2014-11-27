package screens
{
	import events.NavigationEvent;
	
	import flash.media.Sound;
	import flash.media.SoundMixer;
	
	import objects.Player;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class InGame extends Sprite
	
	{
		private var player:Player;
		private var kansioBtn:Button;
		private var bgScreen:Image;    //GameBackground
		private var bgMusic:Sound;
		private var muteBtn:Button;
		
		private var mute:Boolean = false;
		
		
		private var muteBtnTwo:Button;
		
		public function InGame()
		{
		
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);	
			drawGame();
		}
		
		private function drawGame():void
		{		
			
			//bgScreen = new Image(Assets.getTexture("PeliTaka"));  					
			//this.addChild(bgScreen);
				
		kansioBtn = new Button(Assets.getTexture("KansioNappi")); 
		this.addChild(kansioBtn);
		kansioBtn.x = 598;
		kansioBtn.y = 420;
			
		muteBtn = new Button(Assets.getTexture("muteNappi"));
		this.addChild(muteBtn);
		muteBtn.x = 20;
		muteBtn.y = 450;
			
		player = new Player();
		player.x = 320;
		player.y = 240;
		this.addChild(player);
		
		this.addEventListener(Event.TRIGGERED, onInGameClick)							
		this.addEventListener(Event.TRIGGERED, soundOff)	
		}
		private function soundOff(event:Event):void
		{
		var ButtonClicked:Button = event.target as Button;
		if((ButtonClicked as Button) == muteBtn)
		{	
		muteBtn.visible = false;
		SoundMixer.stopAll();
		muteBtnTwo = new Button(Assets.getTexture("muteBtnTwo"));
		muteBtnTwo.x  = 20;
		muteBtnTwo.y = 450;
		this.addEventListener(Event.TRIGGERED, soundOn)
		}			
		}		
		private function soundOn():void
		{	
			muteBtnTwo.visible = false;
			muteBtn.visible = true;	
		}
			private function onInGameClick(event:Event):void
		{
		var ButtonClicked:Button = event.target as Button;
		if ((ButtonClicked as Button) == kansioBtn)
		{		
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"KansioNappi"}, true));  			
		SoundMixer.stopAll()
		}
		}
		public function disposeTemporarily():void
	{	
		this.visible = false;
	}
		public function initialize():void
	{
		this.visible = true;
	}
		
	}
}