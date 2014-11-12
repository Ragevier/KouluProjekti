package
{
	import events.NavigationEvent;
	
	import screens.InGame;
	import screens.StartScreen;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Game extends Sprite
	{
		private var screenInGame:InGame;
		private var screenStartScreen:StartScreen;
		
		public function Game()
		{
			
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		public function onAddedToStage(event:Event)
		{
		this.addEventListener(events.NavigationEvent.CHANGE_SCREEN, onChangeScreen);
		
		screenInGame = new InGame();	
		screenInGame.disposeTemporarily();
		this.addChild(screenInGame)
			
		screenStartScreen = new StartScreen();
		this.addChild(StartScreen);
		screenStartScreen.initialize();
		
		
		}	
		private function onChangeScreen(events:NavigationEvent):void
		{
		 switch (events.params.id){
			
			 
			 case "play":
			screenStartScreen.Dispose.Temporarily();
			screenInGame.initialize();
			break;
		 }
		}
	}
}