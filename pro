::create csv file
(spectre㉿MSI)-[~]$ touch pqr.csv

::open file to edit it
(spectre㉿MSI)-[~]$ vi pqr.csv

::view the data in csv file
(spectre㉿MSI)-[~]$ more pqr.csv
ID,Name,age,salary,Department
101,Alice,0,70000,Data Science
102,Bob,25,50000,Engineering
103,Charlie,5,80000,Data Science
104,David,40,90000,HR
105,Eve,28,60000,Engineering
106,Frank,38,75000,HR
107,Grace,27,72000,Data Science
108,Hank,32,68000,Engineering
109,Ivy,29,62000,Data Science
110,Jack,31,71000,HR

::search "Engineering" in csv file
(spectre㉿MSI)-[~]$ grep 'Engineering' pqr.csv
102,Bob,25,50000,Engineering
105,Eve,28,60000,Engineering
108,Hank,32,68000,Engineering

::display 5 rows in up to bottom in csv file
(spectre㉿MSI)-[~]$ head -5 pqr.csv
ID,Name,age,salary,Department
101,Alice,0,70000,Data Science
102,Bob,25,50000,Engineering
103,Charlie,5,80000,Data Science
104,David,40,90000,HR

::display 3 rows in bottom to up in csv file
(spectre㉿MSI)-[~]$ tail -3 pqr.csv
108,Hank,32,68000,Engineering
109,Ivy,29,62000,Data Science
110,Jack,31,71000,HR

::display
(spectre㉿MSI)-[~]$ awk -F, '{print NF;exist}' pqr.csv
4
5
5
5
5
5
5
5
5
5
5

::display number of columns
(spectre㉿MSI)-[~]$ awk -F, '{print NF;exit}' pqr.csv
4

::display only age
(spectre㉿MSI)-[~]$ awk -F, '{print $3}' pqr.csv
age
0
25
5
40
28
38
27
32
29
31

::display 7th row 
(spectre㉿MSI)-[~]$ head -n7 pqr.csv | tail -n1
106,Frank,38,75000,HR

::display last 3 rows in csv file
(spectre㉿MSI)-[~]$ tail -3 pqr.csv
108,Hank,32,68000,Engineering
109,Ivy,29,62000,Data Science
110,Jack,31,71000,HR

::display salary
(spectre㉿MSI)-[~]$ cut -d, -f4 pqr.csv
salary
70000
50000
80000
90000
60000
75000
72000
68000
62000
71000
(spectre㉿MSI)-[~]$ awk -F, '{print $4}' pqr.csv
salary
70000
50000
80000
90000
60000
75000
72000
68000
62000
71000

::display 2nd and 3rd columns
(spectre㉿MSI)-[~]$ awk -F, '{print $2 "," $3}' pqr.csv
Name,age
Alice,0
Bob,25
Charlie,5
David,40
Eve,28
Frank,38
Grace,27
Hank,32
Ivy,29
Jack,31

::display 2nd and 3rd columns and save a new file
(spectre㉿MSI)-[~]$ awk -F, '{print $2 "," $3}' pqr.csv > pqr2.csv
(spectre㉿MSI)-[~]$ more pqr2.csv
Name,age
Alice,0
Bob,25
Charlie,5
David,40
Eve,28
Frank,38
Grace,27
Hank,32
Ivy,29
Jack,31

::display sort the salary 
(spectre㉿MSI)-[~]$ awk -F, '{print $4}' pqr.csv | sort
50000
60000
62000
68000
70000
71000
72000
75000
80000
90000
salary

::sort the all csv data and display it
(spectre㉿MSI)-[~]$ sort -t',' -k4,4n pqr.csv
ID,Name,age,salary,Department
102,Bob,25,50000,Engineering
105,Eve,28,60000,Engineering
109,Ivy,29,62000,Data Science
108,Hank,32,68000,Engineering
101,Alice,0,70000,Data Science
110,Jack,31,71000,HR
107,Grace,27,72000,Data Science
106,Frank,38,75000,HR
103,Charlie,5,80000,Data Science
104,David,40,90000,HR

::display the order of the age (max to min)
(spectre㉿MSI)-[~]$ sort -t',' -k3,3nr pqr.csv
104,David,40,90000,HR
106,Frank,38,75000,HR
108,Hank,32,68000,Engineering
110,Jack,31,71000,HR
109,Ivy,29,62000,Data Science
105,Eve,28,60000,Engineering
107,Grace,27,72000,Data Science
102,Bob,25,50000,Engineering
103,Charlie,5,80000,Data Science
101,Alice,0,70000,Data Science
ID,Name,salary,Department

::display the order of the salary(max to min)
(spectre㉿MSI)-[~]$ sort -t',' -k4,4 -r pqr.csv
ID,Name,salary,Department
104,David,40,90000,HR
103,Charlie,5,80000,Data Science
106,Frank,38,75000,HR
107,Grace,27,72000,Data Science
110,Jack,31,71000,HR
101,Alice,0,70000,Data Science
108,Hank,32,68000,Engineering
109,Ivy,29,62000,Data Science
105,Eve,28,60000,Engineering
102,Bob,25,50000,Engineering


::display the 2nd and 4th columns sort by alperbaticaly order
(spectre㉿MSI)-[~]$ sort -t',' -k2,2 | sort -t',' -k4,4 -r pqr.csv
ID,Name,salary,Department
110,Jack,31,71000,HR
109,Ivy,29,62000,Data Science
108,Hank,32,68000,Engineering
107,Grace,27,72000,Data Science
106,Frank,38,75000,HR
105,Eve,28,60000,Engineering
104,David,40,90000,HR
103,Charlie,5,80000,Data Science
102,Bob,25,50000,Engineering
101,Alice,0,70000,Data Science








