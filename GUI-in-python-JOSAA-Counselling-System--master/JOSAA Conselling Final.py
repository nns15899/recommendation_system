from tkinter import*
import tkinter.messagebox
import cv2
import PIL.Image, PIL.ImageTk

import sqlite3
conn = sqlite3.connect('test.db')
conn.execute('''create table IF NOT EXISTS students
            (fname varchar(50),
            lname varchar(50),
            rollno int(10) primary key not null,
            marks float,
            email varchar(50),
            phoneno int(10),
            collegechoice1 varchar(50),
            branchchoice1 varchar(50),
            collegechoice2 varchar(50),
            branchchoice2 varchar(50),
            collegechoice3 varchar(50),
            branchchoice3 varchar(50),
            college_allocated varchar(50),
            branch_allocated varchar(50));''')



N1 = "IIT Delhi"
N2 = "IIT Bombay"
N3 = "IIT Kharagpur"
N4 = "IIT Roorkee"
N5 = "IIT Madras"
N6 = "IIT Guwahati"
N7 = "IIT Kanpur"

B1 = "Computer Science & Engineering"
B2 = "Electronice & Communication"
B3 = "Mechanical Engineering"
B4 = "Electrical Engineering"
B5 = "Civil Engineering"


def save_info():
    tkinter.messagebox.showinfo('Registration Completed!', 'You Have Been Registered Successfully! Please check your mobile number for seat allotment.')
    firstname_info = firstname.get()
    lastname_info = lastname.get()  
    rollno_info = rollno.get()    
    rollno_info = int(rollno_info)
    email_info = email.get()
    phoneno_info = phoneno.get()
    phoneno_info = int(phoneno_info)
    jeemarks_info = jeemark.get()
    jeemarks_info = int(jeemarks_info)    
    boardper_info = boardper.get()
    boardper_info = int(boardper_info)
    collegechoice1_info = var1.get()
    branchchoice1_info = var4.get()
    collegechoice2_info = var2.get()
    branchchoice2_info = var5.get()
    collegechoice3_info = var3.get()
    branchchoice3_info = var6.get()
    print(firstname_info, lastname_info, rollno_info, email_info, phoneno_info, jeemarks_info, boardper_info, collegechoice1_info,
          branchchoice1_info, collegechoice2_info, branchchoice2_info, collegechoice3_info, branchchoice3_info)
    
    conn.execute("insert into students(fname, lname, rollno, marks, email, phoneno, collegechoice1, branchchoice1, collegechoice2, branchchoice2, collegechoice3, branchchoice3) \
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",(firstname_info, lastname_info, rollno_info, jeemarks_info+(boardper_info/100), email_info, phoneno_info, collegechoice1_info, branchchoice1_info, collegechoice2_info, branchchoice2_info, collegechoice3_info, branchchoice3_info))

    conn.commit()

    firstname_entry.delete(0, END)  
    lastname_entry.delete(0, END)
    rollno_entry.delete(0, END)
    email_entry.delete(0, END)
    phoneno_entry.delete(0, END)
    jeemark.delete(0, END)
    boardper.delete(0, END)
    #collegechoice11.delete(0, END)
    #branchchoice1.delete(0, END)
    #collegechoice22.delete(0, END)
    #branchchoice2.delete(0, END)
    #collegechoice33.delete(0, END)
    #branchchoice3.delete(0, END)

    screen.destroy()
    
    

screen = Tk()
screen.geometry("800x800",)
screen.title("JEE MAIN COLLEGE CHOICES FORM")
screen.configure(background='Pink')

heading = Label(text="REGISTRATION FORM", bg = "Sky Blue", fg = "black", width = "500", height = "2")
heading.pack()

cv_img = cv2.imread("josaa-logo.png")
cv_img = cv2.cvtColor(cv2.imread("josaa-logo.png"), cv2.COLOR_BGR2RGB)
height, width, no_channels = cv_img.shape
canvas = tkinter.Canvas(screen, width = width, height = height)
canvas.place(x=300, y=250)
photo = PIL.ImageTk.PhotoImage(image = PIL.Image.fromarray(cv_img))
canvas.create_image(0, 0, image=photo, anchor=tkinter.NW)

cv_img = cv2.blur(cv_img, (5, 5))
photo = PIL.ImageTk.PhotoImage(image = PIL.Image.fromarray(cv_img))
canvas.create_image(0, 0, image=photo, anchor=tkinter.NW)




firstname_text = Label(text = "First Name: ")
Label
lastname_text = Label(text = "Last Name: ")
email_text = Label(text = "Email: ")
phoneno_text = Label(text = "Phone No: ")
rollno = Label(text = "JEE MAINS ROLL NO:")
jeemarks= Label(text="JEE MAINS MARKS: ")
boardmarks=Label(text="BOARD PERCENTAGE: ")

collegechoice11 = Label(text = "College Choice 1: ")
var1=StringVar()
var2=StringVar()
var3=StringVar()
var4=StringVar()
var5=StringVar()
var6=StringVar()

collegechoice1 = OptionMenu(screen,var1, N1,N2,N3,N4,N5,N6,N7)
collegechoice1.configure(font=("Arial",8),width=10)
collegechoice1.place(x=15, y=445)


branchchoice11 = Label(text= "Branch :")
branchchoice1 = OptionMenu(screen,var4, B1,B2,B3,B4,B5)
branchchoice1.configure(font=("Arial",8),width=30)
branchchoice1.place(x=220, y=445)

collegechoice22 = Label(text = "College Choice 2: ")
collegechoice2 = OptionMenu(screen,var2, N1,N2,N3,N4,N5,N6,N7)
collegechoice2.configure(font=("Arial",8),width=10)
collegechoice2.place(x=15, y=515)

branchchoice22 = Label(text= "Branch :")
branchchoice2 = OptionMenu(screen,var5, B1,B2,B3,B4,B5)
branchchoice2.configure(font=("Arial",8),width=30)
branchchoice2.place(x=220, y=515)



collegechoice33 = Label(text = "College Choice 3: ")
collegechoice3 = OptionMenu(screen,var3, N1,N2,N3,N4,N5,N6,N7)
collegechoice3.configure(font=("Arial",8),width=10)
collegechoice3.place(x=15, y=585)

branchchoice33 = Label(text= "Branch :")
branchchoice3 = OptionMenu(screen,var6, B1,B2,B3,B4,B5)
branchchoice3.configure(font=("Arial",8),width=30)
branchchoice3.place(x=220, y=585)




firstname_text.place(x = 15, y = 70)
lastname_text.place(x = 220, y = 70)
rollno.place(x = 15, y = 140)
jeemarks.place(x = 220, y = 140)
boardmarks.place(x = 15, y = 210)
email_text.place(x = 15, y = 280)
phoneno_text.place(x = 15, y = 350)
collegechoice11.place(x = 15, y = 420)
collegechoice22.place(x = 15, y = 490)
collegechoice33.place(x = 15, y = 560)



firstname = StringVar()
lastname = StringVar()
rollno = IntVar()
email = StringVar()
phoneno = IntVar()
jeemark= IntVar()
boardper = IntVar()
firstname_entry = Entry(textvariable = firstname, width="30")
lastname_entry = Entry(textvariable = lastname, width="30")
rollno_entry = Entry(textvariable = rollno, width="30")
jeemark = Entry(textvariable = jeemark, width="30")
boardper = Entry(textvariable = boardper, width="30")
email_entry = Entry(textvariable = email, width="30")
phoneno_entry = Entry(textvariable = phoneno, width="30")




firstname_entry.place(x=15, y=100)
lastname_entry.place(x=220, y=100)
rollno_entry.place(x=15, y=170)
email_entry.place(x=15, y=310)
phoneno_entry.place(x=15, y=380)
jeemark.place(x=220, y=170)
boardper.place(x=15, y=240)

register = Button(text = "Register", width = "40", height = "2", command= save_info, bg = "red")
register.place(x=300, y = 650)


screen.mainloop()
