package
{
	import events.NavigationEvent;
	
	import flash.display.Sprite;
	
	import screens.InGame;
	import screens.Kansio;
	import screens.KansioKasvit;
	import screens.KansioPuut;
	import screens.KansioSienet;
	import screens.StartScreen;
	
	import starling.core.Starling;
	
	[SWF(FrameRate = "60", width = "640", height = "480", backgroundColor="0x333333")]
	
	public class KouluProjekti extends Sprite
		
		
	{
		//private var stats:Stats;
		private var myStarling:Starling;
		public function KouluProjekti()
		{
			
			//stats = new Stats ();
			//this.addChild(stats);
			
			myStarling = new Starling(Game, stage)
			myStarling.antiAliasing = 1;
			myStarling.start();
		
		}	
	}
}