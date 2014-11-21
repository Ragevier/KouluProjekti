package events
{
	import starling.events.Event;
	
	public class SoundMuteEvent extends Event
	
	public static const SOUND_MUTE:Boolean = false;
	{	
		public function SoundMuteEvent(type:String, bubbles:Boolean=false, data:Object=null)
		{
			super(type, bubbles, data);
		
		
		}
	}
}