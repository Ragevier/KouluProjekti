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
		private var MainPlayer:Player;
		private var KansioNappi:Button;
		private var BgScreen:Image;    //GameScreen a.k.a GameBackground
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
			//MainPlayer = new Player(Assets.getAtlas().getTexture("Player")); // Sisälle SpriteSheetin Päähahmon Liikkuminen
			//MainPlayer.x = 0;
			//MainPlayer.y = 0;
			
			BgScreen = new Image(Assets.getTexture("InsertGSTähän")); 
			this.addChild(BgScreen)
			
			BgMusic = (Assets.getSound("BgMusic"));  //
			BgMusic.play()	
			
			KansioNappi = new Button(Assets.getTexture("Kansionappi")); //Napin emboded class
			KansioNappi.x = 620;
			KansioNappi.y = 470;
			this.addEventListener(Event.TRIGGERED, onInGameClick)							
		}
		
		private function onInGameClick(event:Event):void
		{
		var ButtonClicked:Button = event.target as Button;
		if ((ButtonClicked as Button) == KansioNappi)
		{
			this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"Joku"}, true ));  // Kansioon navigoinnin  tapahtuma
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