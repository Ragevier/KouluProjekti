package screens
{
	import events.NavigationEvent;
	
	import flash.media.Sound;
	
	import objects.Player;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class InGame extends Sprite
	
	{
		private var mainPlayer:Player;
		private var KansioBtn:Button;
		private var BgScreen:Image;    //GameBackground
		private var BgMusic:Sound;
		
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
			
			BgScreen = new Image(Assets.getTexture("PeliTaka")); 
			this.addChild(BgScreen)
			
			BgMusic = (Assets.getSound("BgMusic")); 
			BgMusic.play();	
			
			KansioBtn = new Button(Assets.getTexture("KansioNappi")); // Kansioon navigoinnin nappi
			this.addChild(KansioBtn)
			KansioBtn.x = 598;
			KansioBtn.y = 420;
			this.addEventListener(Event.TRIGGERED, onInGameClick)							
		
		mainPlayer = new Player;
		mainPlayer.x = 320;
		mainPlayer.y = 240;
		
		}
		
		private function onInGameClick(event:Event):void
		{
		var ButtonClicked:Button = event.target as Button;
		if ((ButtonClicked as Button) == KansioBtn)
		{
			this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"KansioNappi"}, true));  // Kansioon navigoinnin nappi
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