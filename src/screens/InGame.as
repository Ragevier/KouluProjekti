package screens
{
	import events.NavigationEvent;
	
	import flash.media.Sound;
	import flash.media.SoundMixer;
	import flash.ui.Keyboard;
	
	import objects.Kasvit;
	import objects.Player;
	import objects.Puut;
	import objects.Sienet;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.events.KeyboardEvent;
	import starling.events.TouchEvent;
	import starling.events.TouchPhase;
	
	public class InGame extends Sprite
	
	{
		private var player:Player;
		private var kansioBtn:Button;
		private var bgScreen:Image;    
		private var bgMusic:Sound;
		private var muteBtn:Button;

		private var sienet:Sienet;
		private var kasvit:Kasvit;
		private var puut:Puut;
		private var mute:Boolean = false;
		
		private var valikkoRuutu:Valikko;
		
		private var muteBtnTwo:Button;
		
		public function InGame()
		{
		
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		this.addEventListener(KeyboardEvent.KEY_DOWN, valikko)
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
				
		kansioBtn = new Button(Assets.getTexture("KansioNappi")); 
		this.addChild(kansioBtn);
		kansioBtn.x = 598;
		kansioBtn.y = 420;
								
		player = new Player();	
		player.x = stage.stageWidth/2;
		player.y = stage.stageHeight/2;
		this.addChild(player);
			
		kasvit = new Kasvit();	
		this.addChild(kasvit);
		
		sienet = new Sienet();
		this.addChild(sienet);
		
		puut = new Puut();
		this.addChild(puut);
		
		valikkoRuutu = new Valikko();
		valikkoRuutu.visible = false;
		this.addChild(valikkoRuutu)	 
				
		this.addEventListener(Event.TRIGGERED, onInGameClick)								
		}
	
			private function onInGameClick(event:Event):void
		{
		var ButtonClicked:Button = event.target as Button;
		if ((ButtonClicked as Button) == kansioBtn)
		{		
		this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"KansioNappi"}, true));  			
		SoundMixer.stopAll()
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
		
		private function valikko(event:KeyboardEvent):void
		{
		if(event.keyCode == Keyboard.ESCAPE){
		if(valikkoRuutu.visible == false){          
			valikkoRuutu.visible = true
			}else{valikkoRuutu.visible = false}
			
			}	
		}	
	}	
}
