from tkinter import CENTER, NW, Canvas, Frame, Listbox, Scrollbar, Tk
from products.product_window import ProductWindow
from structural.singleton import Singleton 
import auth.authwindow as authwindow
from db.maindb import DB

class Window(Tk, Singleton):
    def init(self, *args, **kwargs):
        super().__init__()
        self._frame = None
        self.db = DB()
        self.switch_frame(authwindow.AuthWindow)
        #self.switch_frame(ProductWindow)
        print('calling from init')
    
    def __init__(self):
        pass
    
    def switch_frame(self, frame_class):
        new_frame = frame_class(self)
        if self._frame is not None:
            self._frame.destroy()
        self._frame: Frame = new_frame
        print(frame_class)
        self._frame.pack(expand=True, fill="both") 
        print("frame swithed", new_frame)




