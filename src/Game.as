package
{
	import events.NavigationEvent;

	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Game extends Sprite
	{
		private var InGame;
		private var StartScreen;
		
		public function Game()
		{
			super();
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		public function onAddedToStage(event:Event)
		{
		this.addEventListener(events.NavigationEvent.CHANGE_SCREEN, onChangeScreen)
		
		//screenInGame();
		//screenInGame.disposeTemporarily();
		}	
		private function onChangeScreen(events:NavigationEvent):void
		{
		 switch (events.params.id){
			 case "play"
			screenStartScreen.Dispose.Temporarily();
			screenInGame.initialize();
			break;
		 }
		}
	}
}