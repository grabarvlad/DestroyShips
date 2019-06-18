package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;

	public class Bullet extends Entity
	{
		[Embed(source = "bullet.png")]private const BULLET:Class;
		private var sprite:Image = new Image(BULLET);
		private var speed:int = 5;
		public function Bullet(x:Number, y:Number) 
		{
			super(x, y);
			setHitbox(10, 10);
			graphic = sprite;
			sprite.centerOrigin();
			type = "bullet";
			
		
			
		}
		override public function update():void 
		{
			y -= speed;
			if (y<0) 
			{
				world.recycle( this);
			}
			if (collide("enemy", x , y)){
				world.remove(this);
			}
		}
		
	}

}