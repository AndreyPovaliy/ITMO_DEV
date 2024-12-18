import tkinter as tk


window = tk.Tk()

window.title("Рецензия")

window.rowconfigure(0, minsize=600, weight=1)
window.columnconfigure(1, minsize=600, weight=1)

txt_edit = tk.Text(window)

fr_buttons = tk.Frame(window)
btn_send = tk.Button(fr_buttons, text="Отправить")
btn_est = tk.Button(fr_buttons, text="Поставить оценку")
btn_back = tk.Button(fr_buttons, text="Назад")

btn_send.grid(row=0, column=0, sticky="ew", padx=5, pady=5)
btn_est.grid(row=1, column=0, sticky="ew", padx=5, pady=5)
btn_back.grid(row=2, column=0, sticky="ew", padx=5)

fr_buttons.grid(row=0, column=0, sticky="ns")
txt_edit.grid(row=0, column=1, sticky="nsew")



window.mainloop()