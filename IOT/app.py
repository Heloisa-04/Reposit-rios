from flask import Flask, render_template
import paho.mqtt.client as mqtt

app = Flask(__name__)

messages = [] # Lista que vai armazenar as mensagens recebidas

# MQTT Config
BROKER = "192.168.0.108"  # IP da Rasp
PORT = 1883 # porta padrão
TOPIC = "grupo7/chat" # é o tópico que esta sendo monitorado

def on_connect(client, userdata, flags, rc):                # client- chama métodos como subscribe ou publish
    print(f"Conectado com código de resultado: {rc}")       # userdata- é qualquer dado que você quiser associar ao cliente MQTT
    client.subscribe(TOPIC)                                 #flags-  dicionário que traz informações técnicas da conexão, aparece no terminal
    #Inscreve o cliente

#Verifica as novas mensagens que vem do broker
def on_message(client, userdata, msg):
    print(f"Mensagem recebida: {msg.topic} -> {msg.payload.decode()}") #Transforma os bits em strings legiveis 
    messages.append((msg.topic, msg.payload.decode())) #Adiciona a mensagem na lista
    if len(messages) > 100:  #Limita a 100 mensagens enviadas
        messages.pop(0)


client = mqtt.Client() #instancia o cliente
client.on_connect = on_connect # função que será chamada automaticamente quando o cliente conseguir se conectar ao broker
client.on_message = on_message #a função callback que será chamada sempre que uma mensagem for recebida em um tópico inscrito.

#inicia a conexão mqtt
def start_mqtt():
    client.connect(BROKER, PORT, 60) #estabelece a conexão com o broker
    client.loop_start() #inicia um loop em segundo plano

# Inicia MQTT quando app começa a rodar
start_mqtt()

@app.route('/')
def index():
    return render_template('index.html', messages=messages)

if __name__ == '__main__':
    app.run(debug=True)
