extends Node


var network =NetworkedMultiplayerENet.new()
var ip = "127.0.0.1"
var port = 1909

func _ready():
	ConnectToServer()

func ConnectToServer():
	network.create_client(ip,port)
	get_tree().set_network_peer(network)
	
	network.connect("connection_failed",self,"_OnConnectionFailed")
	network.connect("connection_succeded",self,"_OnConnectionSucceded")
	


func _OnConnectionFailed():
	print("No se conectó")
func _OnConnectionSucceded():
	print("Conectado")
