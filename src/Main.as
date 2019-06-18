package
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	public class Main extends Engine
	{
		
		public function Main()
		{
			super(800, 600, 30, false);
			FP.screen.scale = 2;
			FP.world =  new MyWorld;
			FP.console.enable();
			
		}
		
	}
	
}