from tkinter import CENTER, NW, Frame, Label, Entry, Button, font
from typing import TYPE_CHECKING
from tkinter.messagebox import showinfo, showerror, showwarning
from products.product_window import ProductWindow

if TYPE_CHECKING:
    from mainwindow import Window

from .styles import *






def init_auth(handle, master: 'Window'):
    def clicked():
        email = email_entry.get()
        password = password_entry.get()
        user = master.db.login(email, password)
        print(type(user), 18)
        if type(user) == str:
            #label = Label(frame, text=user, font=header_style, foreground="#FF0000", **header_padding)
            #label.pack()
            showerror(title="Ошибка!", message="Неверный логин или пароль") 
        else:
            print(email, password, 12)
            print(user, 24)
            master.switch_frame(ProductWindow)
    


    products = Label(handle, text="Все товары", foreground="#FF2021", font=header_style)
    products.pack(anchor="ne", pady=30, padx=30)

    global frame
    frame = Frame(handle)
    


    header = Label(frame, text="Авторизация", font=header_style)
    header.pack()
    

    username_label = Label(frame, text="E-mail", font=label_style, **base_padding)
    username_label.pack()

    global email_entry 
    email_entry = Entry(frame, bg='#fff', fg='#444', font=entry_style)
    email_entry.pack()

    password_label = Label(frame, text="Пароль", font=label_style, **base_padding)
    password_label.pack()

    global password_entry
    password_entry = Entry(frame, bg='#fff', fg='#444', font=entry_style)
    password_entry.pack()

    send_btn = Button(frame, text="Войти", command=clicked)
    send_btn.pack(**base_padding)
    frame.place(in_=handle, anchor="center", relx=.5, rely=.5)


