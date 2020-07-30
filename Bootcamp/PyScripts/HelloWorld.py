# -*- coding: utf-8 -*-
import math

def get_pi():
        return math.pi;
    
def hello(msg):
    mensagem = "Olám,Mundo! O valor de Pi é " + msg
    print(mensagem)

msg = str(get_pi())
hello(msg)