from tkinter import LEFT, RIGHT, Button, Frame, Label



class ProductWindow(Frame):
    def __init__(self, master):
        Frame.__init__(self, master)
        header = Label(master, text="Все товары",foreground="#931043", padx="10", pady="10")
        header.pack(side="right", anchor="n") 
