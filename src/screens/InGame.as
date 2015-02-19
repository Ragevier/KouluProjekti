package screens
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.media.Sound;
	import flash.media.SoundMixer;
	import flash.ui.Keyboard;
	
	import events.NavigationEvent;
	
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

		private var sienet:Sienet;
		private var kasvit:Kasvit;
		private var puut:Vector.<Puut>;
		private var puutKuvat:Puut;
		private var hitting:Boolean
		private var onHit:Boolean
		
		private var kavely:Boolean = false;
		private var	playerSpeed:Number = 6;
		private var noSpeed:Number = 0;
		
		private var valikkoRuutu:Valikko;
		public var kansioKasvi:KansioKasvit
		public var mustikkaa:String
	
		private var hitObstacle:Number = 0;
		
		public function InGame()
		{
		
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
			this.addEventListener(KeyboardEvent.KEY_DOWN, handleDown)
			this.addEventListener(KeyboardEvent.KEY_UP, handleUp)	
			this.addEventListener(TouchEvent.TOUCH, onTouch)	
		}
		public function onTouch(te:TouchEvent):void
		{
	//	if(te.getTouch(kasvit.kanerva,TouchPhase.BEGAN)){
	//	 kasvit.kanerva.visible = false	 
	//	kansioKasvi.mustikkaKuva = "Mustikka ";
	//	}
			
			
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
			
			player = new Player();	
			player.x = stage.stageWidth/2;
			player.y = stage.stageHeight/2;
			this.addChild(player);
		
			kasvit = new Kasvit();	
			this.addChild(kasvit);
		
			sienet = new Sienet();
			this.addChild(sienet);
		
			puutKuvat = new Puut();
			this.addChild(puutKuvat);
		
			valikkoRuutu = new Valikko();
			valikkoRuutu.visible = false;
			this.addChild(valikkoRuutu)	 
				
			kansioBtn = new Button(Assets.getTexture("KansioNappi")); 
			this.addChild(kansioBtn);
			kansioBtn.x = 530;
			kansioBtn.y = 360;
			
			
			this.addEventListener(Event.TRIGGERED, onInGameClick)								
				
			hitObstacle--;	
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
			
			puut = new Vector.<Puut>();		
			hitObstacle = 0;
		}
		
		private function handleDown(event:KeyboardEvent):void
		{
		this.addEventListener(Event.ENTER_FRAME, detectHit)
		
		if(event.keyCode == Keyboard.LEFT){
				player.x -= playerSpeed;		
				kavely = true	
			}else if(event.keyCode == Keyboard.RIGHT){
				player.x += playerSpeed;		
				kavely = true	
			}else if(event.keyCode == Keyboard.UP){
				player.y -= playerSpeed;		
				kavely = true	
			}else if(event.keyCode == Keyboard.DOWN){
				player.y += playerSpeed;				
				kavely = true
			}	
			
			if(event.keyCode == Keyboard.ESCAPE){
				if(valikkoRuutu.visible == false){          
					valikkoRuutu.visible = true
				}else{valikkoRuutu.visible = false}	
			}	
			
		}	
		private function handleUp(event:KeyboardEvent):void
		{	
			
			if(event.keyCode == Keyboard.LEFT){		
			kavely = false
			}else if(event.keyCode == Keyboard.RIGHT){
			kavely = false
			}else if(event.keyCode == Keyboard.UP){
			kavely = false
			}else if(event.keyCode == Keyboard.DOWN){
			kavely = false	
			}
		}
			private function detectHit(event:Event):void
		{		
			var DetectTree:Puut;
			for (var i:uint = 0;i<puut.length;i++)
			if(DetectTree.alreadyHit == false && puutKuvat.bounds.intersects(player.bounds)){
			DetectTree.alreadyHit = true;					
			player.x = 0;
			player.y = 0;
			
			//var p1:Point = new Point(player.x, player.y);
			//var p2:Point = new Point(puutKuvat.x, puutKuvat.y);
			
			//var distance:Number = Point.distance(p1, p2);
			//var radius1:Number = player.width/1;
			//var radius2:Number = puutKuvat.width/1;
			
			//if (distance < radius1 + radius2)
			}	
		}
	}
}