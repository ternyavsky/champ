from tkinter import Frame, Label, Entry, Button
from tkinter.messagebox import showerror

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from mainwindow import Window
from .styles import * 



class AuthWindow(Frame):
    def __init__(self, master: 'Window'):
        Frame.__init__(self, master, borderwidth=1, relief="solid")
        def clicked():
            email = email_entry.get()
            password = password_entry.get()
            user = master.db.login(email, password)
            if type(user) == str:
                showerror(title="Ошибка!", message="Неверный логин или пароль") 
            else:
                print(email, password, 12) 
                from products.product_window import ProductWindow
                master.switch_frame(ProductWindow)

        def products_btn():
            from products.product_window import ProductWindow
            master.switch_frame(ProductWindow)

        products = Button(self, text="Все товары", foreground="#FF2021", font=header_style, command=products_btn)
        products.pack(anchor="ne", pady=30, padx=30)

        global frame
        frame = Frame(self)
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
        frame.place(in_=self, anchor="center", relx=.5, rely=.5)

