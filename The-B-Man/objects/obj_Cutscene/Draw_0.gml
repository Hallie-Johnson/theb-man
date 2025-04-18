/// @description Insert description here
// You can write your code in this editor

var _videoData = video_draw();
var _videoStatus = _videoData[0];
if (_videoStatus == 0)
{
	draw_surface(_videoData[1], 0, 0);	
}


