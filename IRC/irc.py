import socket
import sys
import time

class IRC:
    irc = socket.socket()

    def __init__(self):
        self.irc = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    def send(self, chan, msg):
        self.irc.send(bytes("PRIVMSG " + chan + " " +msg + "\n", "UTF-8"))

    def connect(self, server, channel, botnick):
        #defines the socket
        print ("connect to:"+server)
        self.irc.connect((server, 6697))
        self.irc.send(bytes("USER " + botnick + " " + botnick +" " + botnick + " :python\n", "UTF-8")) #user authentication
        self.irc.send(bytes("NICK " + botnick + "\n", "UTF-8"))
        time.sleep(5)
        self.irc.send(bytes("JOIN " + channel + "\n", "UTF-8"))

    def get_text(self):
        time.sleep(1)
        text=self.irc.recv(2040).decode("UTF-8")

        if text.find('PING') != -1:
            self.irc.send(bytes('PONG ' + text.split().decode("UTF-8") [1] + '\r\n', "UTF-8")) 

        return text
