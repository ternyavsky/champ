from tkinter import Tk
from structural.singleton import Singleton 
import auth.authwindow as authwindow
from db.maindb import DB

class Window(Tk, Singleton):
    def init(self, *args, **kwargs):
        super().__init__()
        self._frame = None
        self.switch_frame(authwindow.AuthWindow)
        self.db_init()
        print('calling from init')
    
    def __init__(self):
        pass
    
    def switch_frame(self, frame_class):
        new_frame = frame_class(self)
        self._frame = new_frame
        self._frame.pack()

    def db_init(self):
        self.db = DB()



