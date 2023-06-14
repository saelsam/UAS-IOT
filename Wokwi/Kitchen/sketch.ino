// This example uses an ESP32 Development Board
// to connect to shiftr.io.
//
// You can check on your device after a successful
// connection here: https://www.shiftr.io/try.
//
// by Joël Gähwiler
// https://github.com/256dpi/arduino-mqtt

#include <WiFi.h>
#include <MQTT.h>
#include <DHT.h>

const char ssid[] = "Wokwi-GUEST";
const char pass[] = "";

WiFiClient net;
MQTTClient client;

unsigned long lastMillis = 0;

#define DHTPIN 2          // Mention the digital pin where you connected 
#define DHTTYPE DHT22     // DHT 11  
DHT dht(DHTPIN, DHTTYPE);
#define LED_PIN 5
#define WAKTUDHT 1000

unsigned long lastMsg = 0;
float nilaiKelembapan;
float nilaiTemperatur;
#define MSG_DHT (0)
char msg[MSG_DHT];


unsigned long timerDHT = 0;
int value = 0;

void connect() {
  Serial.print("checking wifi...");
  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    delay(1000);
  }

  Serial.print("\nconnecting...");
  while (!client.connect("Kitchen","mrnyahya","QTzQsqlMb9m8gB9i")) {
    Serial.print(".");
    delay(1000);
  }
  
  Serial.println("\nconnected!");

  client.subscribe("mrnyahya/kitchen/led");
  // client.unsubscribe("/hello");
}

void messageReceived(String &topic, String &payload) {
  Serial.println("incoming: " + topic + " - " + payload);
  if (payload == "1"){
      Serial.println("LED : ON");
      digitalWrite(LED_PIN, HIGH);
  }
  else if(payload == "0"){
      Serial.println("LED : OFF");
      digitalWrite(LED_PIN, LOW);
    }

  }

void setup() {
  Serial.begin(115200);
  WiFi.begin(ssid, pass);
  
  // Note: Local domain names (e.g. "Computer.local" on OSX) are not supported
  // by Arduino. You need to set the IP address directly.
  client.begin("mrnyahya.cloud.shiftr.io", net);
  // client.begin("broker.emqx.io", net);
  client.onMessage(messageReceived);
  pinMode(LED_PIN, OUTPUT);

  connect();
}

void loop() {
  client.loop();
  delay(1000);  // <- fixes some issues with WiFi stability
    if (!client.connected()) {
    connect();
  }

  // publish a message roughly every second.
 if ((millis() - timerDHT) > WAKTUDHT) {
    // Update the timer
    timerDHT = millis();

     nilaiKelembapan = dht.readHumidity();
    // Read temperature as Celsius (the default)
    nilaiTemperatur = dht.readTemperature();
    // Read temperature as Fahrenheit (isFahrenheit = true)
    float f = dht.readTemperature(false);

    // Check if any reads failed and exit early (to try again)
    if (isnan(nilaiKelembapan) || isnan(nilaiTemperatur) || isnan(f)) {
      Serial.println(F("Failed to read from DHT sensor!"));
      return;
    }

    int kelembapan = (int)nilaiKelembapan;
    // Read temperature as Celsius (the default)
    int temperatur = (int)nilaiTemperatur;
    Serial.print("Suhu : ");
    Serial.println(temperatur);

    delay(2000);
    snprintf (msg, MSG_DHT, "%s", itoa(temperatur,msg,10)); //ubah nilai int ke string
    client.publish("mrnyahya/kitchen/suhu", msg, true,1); //publish message suhu
    snprintf (msg, MSG_DHT, "%s", itoa(kelembapan,msg,10)); //ubah nilai int ke string
    Serial.print("Kelembapan : ");
    Serial.println(kelembapan);
    client.publish("mrnyahya/kitchen/kelembapan", msg, true,1); //publish message kelembapan

}
}