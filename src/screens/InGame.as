package screens
{
	import events.NavigationEvent;
	
	import flash.geom.Point;
	import flash.geom.Rectangle;
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

		private var sienet:Sienet;
		private var kasvit:Kasvit;
		private var puut:Vector.<Puut>;
		private var puutKuvat:Puut;
		private var hitting:Boolean
		private var onHit:Boolean
		
		private var kavely:Boolean = false;
		private var maxSpeed:Number = 6;
		private var noSpeed:Number = 0;
		
		private var valikkoRuutu:Valikko;
		
		
		public function InGame()
		{
		
		this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		this.addEventListener(KeyboardEvent.KEY_DOWN, handleDown)
		this.addEventListener(KeyboardEvent.KEY_UP, handleUp)	
		}
		private function onAddedToStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);	
			drawGame();
			hitDetect();
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
		
		puutKuvat = new Puut();
		this.addChild(puutKuvat);
		
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
		puut = new Vector.<Puut>();
		}
		
		private function handleDown(event:KeyboardEvent):void
		{
		
			if(event.keyCode == Keyboard.LEFT){
				player.x -= maxSpeed;		
				kavely = true	
			}else if(event.keyCode == Keyboard.RIGHT){
				player.x += maxSpeed;		
				kavely = true	
			}else if(event.keyCode == Keyboard.UP){
				player.y -= maxSpeed;		
				kavely = true	
			}else if(event.keyCode == Keyboard.DOWN){
				player.y += maxSpeed;				
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
		
	private function detectHit():void
	{
		var DetectTree:Puut;
		
		if(DetectTree.alreadyHit == false && DetectTree.bounds.intersects(player.bounds)){
		DetectTree.alreadyHit = true;					
		player.x = noSpeed;
		player.y = noSpeed;	
		}	
	}
	private function hitDetect(event:KeyboardEvent):void
	{
		var p1:Point = new Point(player.x, player.y);
		var p2:Point = new Point(puutKuvat.x, puutKuvat.y);
		var p3:Point = new Point(sienet.x, sienet.y);
		var p4:Point = new Point(kasvit.x, kasvit.y);	
		
		var distance:Number = Point.distance(p1, p2);
		var distance2:Number = Point.distance(p1, p3);
		var distance3:Number = Point.distance(p1, p4);
		
		var radius:Number = player.width/2;
		var radius2:Number = puutKuvat.width/2;
		var radius3:Number = sienet.width/2;
		var radius4:Number = kasvit.width/2;
		
		if(distance < radius + radius2){
			player.x += noSpeed;
			player.y += noSpeed;
		}else if(distance2 < radius + radius3){
			player.x += noSpeed;
			player.y += noSpeed;
		}else if(distance3 < radius + radius4){
			player.x += noSpeed;
			player.y += noSpeed;
		}
		}
	}
}	