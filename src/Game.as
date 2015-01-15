package
{
	import events.NavigationEvent;
	
	import flash.media.Sound;
	import flash.media.SoundMixer;
	
	import screens.InGame;
	import screens.Kansio;
	import screens.KansioKasvit;
	import screens.StartScreen;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Game extends Sprite
	{
		private var screenStartScreen:StartScreen;
		private var screenInGame:InGame;
		private var screenKansio:Kansio;
		private var soundMute:Sounds;
		private var screenKansioKasvit:KansioKasvit;
		
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
		
		screenKansioKasvit = new KansioKasvit();
		screenKansio.disposeTemporarily();
		this.addChild(screenKansioKasvit)
		
		
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
	   	
		case "LajiNappi":
		screenKansio.disposeTemporarily()
		//screenKansioKasvit.initialize()
		break;
		
		case "Takaisin_nappi0003":
		screenInGame.disposeTemporarily()	
		screenKansio.disposeTemporarily()
		//screenKansioKasvit.disposeTemporarily()
		screenStartScreen.initialize()
		break;
		
		
			
		
		 }
		}
	}
}