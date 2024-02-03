from tkinter import Frame 
from auth.ui import init_auth

class AuthWindow(Frame):
    def __init__(self, master):
        Frame.__init__(self, master, borderwidth=1, relief="solid")
        init_auth(self, master) 

