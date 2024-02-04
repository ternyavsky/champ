from tkinter import LEFT, RIGHT, Button, Canvas, Frame, Label, Scrollbar, YView
import tkinter as tk
from typing import TYPE_CHECKING

from auth.styles import *

from auth import authwindow 
if TYPE_CHECKING:
    from mainwindow import Window


class ProductWindow(Frame):
    def __init__(self, master: 'Window'):
        Frame.__init__(self, master)

        def login():
            master.switch_frame(authwindow.AuthWindow)
            
        def logout():
            del master.db.user
            master.switch_frame(authwindow.AuthWindow)



        def on_configure(event):
            # update scrollregion after starting 'mainloop'
            # when all widgets are in canvas
            canvas.configure(scrollregion=canvas.bbox('all'))

        canvas = tk.Canvas(self)
        canvas.pack(side=tk.LEFT, expand=True, fill="both")

        scrollbar = tk.Scrollbar(self, command=canvas.yview)
        scrollbar.pack(side=tk.RIGHT, fill='y')

        canvas.configure(yscrollcommand = scrollbar.set)

        # update scrollregion after starting 'mainloop'
        # when all widgets are in canvas
        canvas.bind('<Configure>', on_configure)

        # --- put frame in canvas ---
        # def on_add():
        #     product = entry.get()
        #     if product:
        #         listbox.insert(tk.END, product)
        #         entry.delete(0, tk.END)

        # def on_delete():
        #     selected = listbox.curselection()
        #     if selected:
        #         listbox.delete(selected)
        frame = tk.Frame(canvas, pady=80)
        canvas.create_window((0,0), window=frame, anchor='center')

        # # --- add widgets in frame ---
        # listbox = tk.Listbox(frame)
        # listbox.pack()

        # entry = tk.Entry(frame)
        # entry.pack()

        # add_button = tk.Button(frame, text="Добавить", command=on_add)
        # add_button.pack()

        # delete_button = tk.Button(frame, text="Удалить", command=on_delete)
        # delete_button.pack()

# Добавление 15 товаров по умолчанию
        # default_products = ['Товар 1', 'Товар 2', 'Товар 3', 'Товар 4', 'Товар 5', 'Товар 6', 'Товар 7', 'Товар 8', 'Товар 9', 'Товар 10', 'Товар 11', 'Товар 12', 'Товар 13', 'Товар 14', 'Товар 15']
        # for product in default_products:
        #     listbox.insert(tk.END, product)
        # nframe = Frame(canvas, borderwidth=1, relief="solid")
        if hasattr(master.db, "user"):
            btn_logout = Button(self, text="Выйти", foreground="#931933", padx=10, pady=10, command=logout)
            btn_logout.pack(side="right", anchor="n")


            user_fn = master.db.user.first_name 
            user_ln = master.db.user.last_name 
            user_label = Label(self, text=f"{user_fn} {user_ln}", foreground="#931933", pady=10, padx=10)
            user_label.pack(side="right", anchor="n")

        else:
            btn_login = Button(self, text="Войти", foreground="#931043", pady=10, padx=10, command=login)
            btn_login.pack(side="right", anchor="n")
        
         
        
        products = master.db.get_products()
        for i, product in enumerate(products):
            Label(frame, text=product.id).grid(pady=20, padx=20)
            
            block2 = Frame(frame, borderwidth=1, relief="solid") 

            Label(block2, text=product.vendor, font=header_style).grid(row=0, column=0)

            Label(block2, text=product.description, font=header_style).grid(row=i, column=0)

            manufac_name = master.db.get_manufac(product.manufacture_id)
            Label(block2, text=manufac_name, font=header_style).grid(row=2, column=0)

            Label(block2, text=product.price, font=header_style).grid(row=3, column=0)

            block2.grid(column=1, row=i, columnspan=40, padx=30)
             
            if product.quantity_total > 0:
                block3 = Label(frame, text=f"Есть {product.quantity_total} шт.", font=header_style, foreground="green")
            else:
                block3 = Label(frame, text="Нету", font=header_style)
            block3.grid(column=50, row=i, pady=20, padx=20)
        
            # l = tk.Label(frame, text="Hello", font="-size 50")
            # l.grid(row=i, column=0)

            # l = tk.Label(frame, text="World", font="-size 50")
            # l.grid(row=i, column=1)

            # l = tk.Label(frame, text="Test text 1\nTest text 2\nTest text 3\nTest text 4\nTest text 5\nTest text 6\nTest text 7\nTest text 8\nTest text 9", font="-size 20")
            # l.grid(row=i, column=2)

        # canvas = Canvas(self, borderwidth=1, relief="solid")
        # canvas.pack(side="right", expand=True, fill="both")
        
        # myscrollbar=Scrollbar(self,orient="vertical")
        # myscrollbar.pack(side="right",fill="y")
        # myscrollbar.config(command=canvas.yview)
        # canvas.config(yscrollcommand=myscrollbar.set)
        


        
        # frame = Frame(self, borderwidth=1, relief="solid")
 

        # header = Label(frame, text="Все товары",foreground="#931043", padx="10", pady="10", borderwidth=1, relief="solid", font=header_style)
        # header.pack(anchor="n")

        
        # print(len(products))
        # frame_products = Frame(self, borderwidth=1, relief="solid")
        # for index, product in enumerate(products):

       

        # frame.place(in_=self, anchor="n", relx=.5)
        # frame_products.place(in_=self,  )
        
        

        


