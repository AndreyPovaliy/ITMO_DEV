import tkinter as tk


window = tk.Tk()
window.title("Введите данные")


frm_form = tk.Frame(relief=tk.SUNKEN, borderwidth=3)
frm_form.pack()


lbl_first_name = tk.Label(master=frm_form, text="Название:")
ent_first_name = tk.Entry(master=frm_form, width=50)

lbl_first_name.grid(row=0, column=0, sticky="e")
ent_first_name.grid(row=0, column=1)


lbl_last_name = tk.Label(master=frm_form, text="Индекс:")
ent_last_name = tk.Entry(master=frm_form, width=50)

lbl_last_name.grid(row=1, column=0, sticky="e")
ent_last_name.grid(row=1, column=1)


lbl_address1 = tk.Label(master=frm_form, text="Город:")
ent_address1 = tk.Entry(master=frm_form, width=50)

lbl_address1.grid(row=2, column=0, sticky="e")
ent_address1.grid(row=2, column=1)


lbl_address2 = tk.Label(master=frm_form, text="Штадт:")
ent_address2 = tk.Entry(master=frm_form, width=50)

lbl_address2.grid(row=3, column=0, sticky=tk.E)
ent_address2.grid(row=3, column=1)




frm_buttons = tk.Frame()
frm_buttons.pack(fill=tk.X, ipadx=5, ipady=5)


btn_submit = tk.Button(master=frm_buttons, text="Выйти")
btn_submit.pack(side=tk.RIGHT, padx=10, ipadx=10)

btn_submit = tk.Button(master=frm_buttons, text="Очистить")
btn_submit.pack(side=tk.RIGHT, padx=10, ipadx=10)


btn_clear = tk.Button(master=frm_buttons, text="Поиск")
btn_clear.pack(side=tk.RIGHT, ipadx=10)


window.mainloop()