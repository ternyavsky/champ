from tkinter import Toplevel, Frame, Label, Button
from auth.ui import init_auth
from db.maindb import DB

class AuthWindow(Frame):
    def __init__(self, master):
        Frame.__init__(self, master)
        init_auth(self, master) 

