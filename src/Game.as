package
{
	import events.NavigationEvent;
	
	import screens.InGame;
	import screens.StartScreen;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Game extends Sprite
	{
		private var screenStartScreen:StartScreen
		private var screenInGame:InGame
		
		
		public function Game()
		{		
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		public function onAddedToStage(event:Event):void
		{
		this.addEventListener(events.NavigationEvent.CHANGE_SCREEN, onChangeScreen);
		
		screenInGame = new InGame();	
		screenInGame.disposeTemporarily();
		this.addChild(screenInGame)
			
		screenStartScreen = new StartScreen();
		this.addChild(screenStartScreen);
		screenStartScreen.initialize();
			
		}	
	
		private function onChangeScreen(event:NavigationEvent):void
		{
		 switch (event.params.id)
		 { 
			case "play":
			screenStartScreen.disposeTemporarily();
			screenInGame.initialize();
			break;
		 }
		}
	}
}