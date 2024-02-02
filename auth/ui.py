from tkinter import CENTER, Label, Entry, Button, font

from .styles import *



def init_auth(handle, master):
    def clicked():
        email = email_entry.get()
        password = password_entry.get()
        master.db.login(email, password)
        print(email, password, 12)
    header = Label(handle, text="Авторизация", font=header_style, justify=CENTER, **header_padding)
    header.pack() 

    username_label = Label(handle, text="E-mail", font=label_style, **base_padding)
    username_label.pack()

    global email_entry 
    email_entry = Entry(handle, bg='#fff', fg='#444', font=entry_style)
    email_entry.pack()

    password_label = Label(handle, text="Пароль", font=label_style, **base_padding)
    password_label.pack()

    global password_entry
    password_entry = Entry(handle, bg='#fff', fg='#444', font=entry_style)
    password_entry.pack()

    send_btn = Button(handle, text="Войти", command=clicked)
    send_btn.pack(**base_padding)


