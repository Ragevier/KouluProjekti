package events
{
	import starling.events.Event;
	
	public class NavigationEvent extends Event
	{
	public static const CHANGE_SCREEN:String = "ChangeScreen";
	
	private var params:Object;
	
	public function NavigationEvent(type:String _params:object =null, bubbles:Boolean=false, data:Object=null)
		{
			
		super(type, bubbles, data);
		this.params = _params;
		}
	}
}