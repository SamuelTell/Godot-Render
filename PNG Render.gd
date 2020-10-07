extends Spatial

var frame = 0	#frame start rendering - just for the name
var file_name = ""
var path
var path_start = "c:/Screenshots/screenshot_" #make sure the path exist before play
var path_end = ".png"
var go_ahead =  0.0
var fps = 24.0
var framerate = 0.0

func _ready():  #start the animation
	get_viewport().msaa = Viewport.MSAA_4X	#set antialias
	#get_viewport().size.x = 1920	#change here to change resolution X
	#get_viewport().size.y = 1080	#change here to change resolution Y
	
	var Animation_player = get_node('AnimationPlayer')
	Animation_player.play("Animation")  #don't know why, but I need to put the name of the animation here to start the animation.
	Animation_player.stop(true) #stops and reset the animation to the begin.

func _process(_delta):
	frame = frame + 1  #calculate the actual frame to render
	file_name = str(frame) #convert to string and store in file_name to compose the name of png file.
	path = path_start + file_name + path_end #compose the path with the name.

	var image = get_viewport().get_texture().get_data()  #get the image
	image.flip_y() # flips the image
	image.save_png(path) #save the image

	var Animation_player = get_node('AnimationPlayer')
	Animation_player.seek(go_ahead, true) #go to the position in time

	framerate = 1/fps #calcaultes how much increment the time position for the next time
	go_ahead = go_ahead + framerate  #update the next time position
	
	print("funcionou - frame: ", frame)
