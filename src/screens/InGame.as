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
		
		private var mute:Sound
		
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
			
			bgScreen = new Image(Assets.getTexture("PeliTaka"));  					
			this.addChild(bgScreen);
			
			//if (!Sounds.muted)Sounds.peliMusiikki.play();													
			
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
			this.addEventListener(Event.TRIGGERED, onSoundMuted)	
		}
		private function onSoundMuted(event:Event):void
		{
			var ButtonClicked:Button = event.target as Button;
			if((ButtonClicked as Button) == muteBtn)
			{
			this.dispatchEvent(new NavigationEvent(NavigationEvent.SOUND_MUTE, {id:"muteNappi"}, true));	
			}	
		}
		private function onInGameClick(event:Event):void
		{
		var ButtonClicked:Button = event.target as Button;
		if ((ButtonClicked as Button) == kansioBtn)
		{
			this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"KansioNappi"}, true));  	
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