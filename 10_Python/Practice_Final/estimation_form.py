import tkinter as tk

window = tk.Tk()
window.title("Поставьте оценку")

r1 = tk.Radiobutton(text='1', value=0)
r1.pack(side=tk.LEFT, padx=10, ipadx=10)

r2 = tk.Radiobutton(text='2', value=1)
r2.pack(side=tk.LEFT, padx=10, ipadx=10)

r3 = tk.Radiobutton(text='3', value=2)
r3.pack(side=tk.LEFT, padx=10, ipadx=10)

r4 = tk.Radiobutton(text='4', value=3)
r4.pack(side=tk.LEFT, padx=10, ipadx=10)

r5 = tk.Radiobutton(text='5', value=4)
r5.pack(side=tk.LEFT, padx=10, ipadx=10)


btn_send = tk.Button( text="Отправить")
btn_back = tk.Button( text="Назад")

btn_send.pack(side=tk.RIGHT, padx=10, ipadx=10)
btn_back.pack(side=tk.RIGHT, padx=10, ipadx=10)

window.mainloop()
