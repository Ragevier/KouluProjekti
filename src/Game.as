package
{
	import events.NavigationEvent;
	
	import flash.media.Sound;
	
	import screens.InGame;
	import screens.Kansio;
	import screens.StartScreen;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Game extends Sprite
	{
		private var screenStartScreen:StartScreen;
		private var screenInGame:InGame;
		private var screenKansio:Kansio;
		
		
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
				
		screenKansio = new Kansio();
		screenKansio.disposeTemporarily();
		this.addChild(screenKansio);
		
		}

		private function onChangeScreen(event:NavigationEvent):void
		{
		 switch (event.params.id)
		 { 
		case "AloitusNappi":
		screenStartScreen.disposeTemporarily();	
		screenInGame.initialize();	
		
		break;	
		 
		case "KansioNappi":
		screenInGame.disposeTemporarily();
		screenKansio.initialize();
		
		break;
		
		case "ReturnBtn":
		screenKansio.disposeTemporarily();
		screenInGame.initialize();
		break;
	
		 }
		}
	}
}