

import cx_Oracle
cx_Oracle.init_oracle_client(lib_dir=r"D:\\Downloads\\instantclient_19_11")


dsn = cx_Oracle.makedsn("127.0.0.1", 1521, service_name="XE")
connection = cx_Oracle.connect(user="c##hepsko", password='root', dsn=dsn,
                               encoding="UTF-8")
cursor = connection.cursor()



def give_grade(mark_id ,mark, classes_id, student_index):
	sql = "INSERT INTO MARK (ID, MARK, CLASSES_ID, STUDENT_INDEX) VALUES (:i, :m, :c, :s)"
	data = [mark_id, mark, classes_id, student_index]
	cursor.execute(sql, data)
	connection.commit()
	print(cursor.rowcount, "Wpisano do tablicy")


def show_marks():
	sql = "SELECT * FROM  MARK"
	cursor.execute(sql)

	for row in cursor:
	    print(row)

def del_mark(to_delete):
	sql = "DELETE FROM mark WHERE ID = :i"
	cursor.execute(sql, [to_delete])
	connection.commit()
	print("---Rekord usuniety poprawnie---")



def edit_mark(to_change, new_mark):
	sql = "UPDATE MARK SET mark  = :m WHERE ID = :i"
	cursor.execute(sql, [new_mark, to_change])
	connection.commit()
	print("---Rekord edytowany poprawnie---")


run = True
while run:
	print()
	print()
	print("############## SYSTEM ZARZADZANIA OCENAMI  ###############")
	print("1 - Wstaw ocene")
	print("2 - Wycofanie oceny (usuniecie)")
	print("3 - Edytuj ocene")
	print("4 - Wyswielt oceny")
	print("5 - Wyjdz")

	choice = int(input())
	if choice == 1:
		mark_id = input("Podaj id: ")
		mark = input("Podaj ocene: ")
		classes_id = input("Podaj id zajec: ")
		student_index = input("Podaj index studenta: ")
		give_grade(mark_id, mark, classes_id, student_index)
		show_marks()
	elif choice == 2:
		show_marks()
		to_delete = int(input("Wybierz id oceny, ktore chcesz wycofac: "))
		del_mark(to_delete)
		print("Baza ocen po usunieciu: ")
		show_marks()
	elif choice == 3:
		print("Oceny")
		show_marks()
		to_change = int(input("Wybierz id oceny, ktore chcesz edytowac: "))
		new_mark = input("Wprwoadz nowa ocene: ")
		edit_mark(to_change,new_mark )  
		print("Oceny po edycji")
		show_marks()	
	elif choice == 4:
		print("Oceny")
		show_marks()
	elif choice == 5:
		run = False
    	


