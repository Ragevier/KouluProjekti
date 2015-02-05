package
{
	import events.NavigationEvent;
	
	import flash.media.Sound;
	import flash.media.SoundMixer;
	
	import screens.InGame;
	import screens.Kansio;
	import screens.KansioKasvit;
	import screens.KansioPuut;
	import screens.KansioSienet;
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
		private var screenKansioSienet:KansioSienet;
		private var screenKansioPuut:KansioPuut;
		
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
		screenKansioKasvit.disposeTemporarily();
		this.addChild(screenKansioKasvit)
		
		screenKansioSienet = new KansioSienet();	
		screenKansioSienet.disposeTemporarily();
		this.addChild(screenKansioSienet)
		
		screenKansioPuut = new KansioPuut();	
		screenKansioPuut.disposeTemporarily();
		this.addChild(screenKansioPuut)
		
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
	   	
		case "kasvitLaji":
		screenKansio.disposeTemporarily();
		screenKansioKasvit.initialize();
		break;
		
		case "puutLaji":
		screenKansio.disposeTemporarily();
		screenKansioPuut.initialize();
		break;
		
		case "sienetLaji":
		screenKansio.disposeTemporarily();
		screenKansioSienet.initialize();
		break;
		
		case "Takaisin_nappi0003":
		screenInGame.disposeTemporarily();	
		screenKansio.disposeTemporarily();
		screenKansioKasvit.disposeTemporarily();
		screenKansioPuut.disposeTemporarily();
		screenKansioSienet.disposeTemporarily()
		screenStartScreen.initialize();
		break;
					
		 }
		}
	}
}