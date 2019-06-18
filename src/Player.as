package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class Player extends Entity 
	{
		
		[Embed(source = "player.png")]private const PLAYER:Class;
		private var sprite:Image =new Image(PLAYER);
		public function Player() 
		{   setHitbox (sprite.width, sprite.height, sprite.width / 2, sprite.height / 2);  
			graphic = sprite;
			sprite.centerOrigin();
		 x = 190;
		 y = 200;
		 layer = -1;
		}
		override public function update():void 
		{
			if(Input.check(Key.UP)){
				y-=5
			}if(Input.check(Key.DOWN)){
				y+=5
			}if(Input.check(Key.LEFT)){
				x-=5
			}if(Input.check(Key.RIGHT)){
				x+=5
			}if(Input.pressed(Key.SPACE)){
				world.add(new Bullet(x, y));
			}
			if (collide("enemy", x , y)){
				world.remove(this);
				trace("ПОТРАЧЕНО");
				
				
			}
			
		}
		
		
	}

}