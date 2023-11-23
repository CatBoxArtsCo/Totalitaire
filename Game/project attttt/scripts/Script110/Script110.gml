// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function Script110(){
	var _col = instance_place(x+velh,y,obj_plat);
	if(_col){
		if(velh>0)
		{
			//x=_col.bbox_left + (x- bbox_right);
		}
		
		if (velh<0)
		{
		//x = _col.bbox_right + (x- bbox_left);
		}
		velh=0;
	}
	x += velh;
	var _col = instance_place(x,y+velv, obj_plat);
	if(_col){
		if(velv>0)
		{
			y=_col.bbox_top + (y- bbox_bottom);
		}
		
		if (velv<0)
		{
		y = _col.bbox_bottom + (y- bbox_top);
		}
		velv=0;
	}
	y+=velv;
}