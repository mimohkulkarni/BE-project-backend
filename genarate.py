from cgi import test
import os
from Database import Database
from LangConfig import LangConfig
from Parser import Parser
from Thesaurus import Thesaurus
import re
import sqlite3

def generatequery(input_string,databaseFile):
    database = Database()
    thesaurus = Thesaurus()
    thesaurus.load("th_english.dat")
    database.set_thesaurus(thesaurus)
    print(input_string)
    # if(databaseFile[0:-5].lower() != "hospital"):
    database.load(databaseFile)
    # else:
    #     database.load("Hospital.sql")
    print("Database loaded")
    config = LangConfig()
    config.load("english.csv")
    parser = Parser(database, config)
    input_string = input_string.lower()
    if 'related to' in input_string:
        input_string=input_string.replace('related to','designation')
    if 'products' in input_string:
        input_string=input_string.replace('products','product')
    if 'staff id' in input_string:
        input_string=input_string.replace('staff id','staffid')
    if 'staff name' in input_string:
        input_string=input_string.replace('staff name','sname')
    if 'department' in input_string:
        input_string=input_string.replace('department','dept')
    if 'sell' in input_string:
        input_string=input_string.replace('sell','cell')
    if 'doctor code' in input_string:
        input_string=input_string.replace('doctor code','drcode')
    if 'diagnosis' in input_string:
        input_string=input_string.replace('diagnosis','diagno')
    if 'patient id' in input_string:
        input_string=input_string.replace('patient id','pid')
    if 'doctor id' in input_string:
        input_string=input_string.replace('doctor id','drcode')
    if 'patient name' in input_string:
        input_string=input_string.replace('patient name','pname')
    if 'patient names' in input_string:
        input_string=input_string.replace('patient names','pname')
    if 'phone number' in input_string:
        input_string=input_string.replace('phone number','phonenumber')
    if 'doctor name' in input_string:
        input_string=input_string.replace('doctor name','dname')
    if 'doctor names' in input_string:
        input_string=input_string.replace('doctor names','dname')
    if 'doctors' in input_string:
        input_string=input_string.replace('doctors','doctor')
    if 'patients' in input_string:
        input_string=input_string.replace('patients','patient')
    if 'patient disease' in input_string:
        input_string=input_string.replace('patient diseases','patientdiag')
    if 'employees' in input_string:
        input_string=input_string.replace('employees','emp')
    if 'branch name' in input_string:
        input_string=input_string.replace('branch name','branch_name')
    if 'branch address' in input_string:
        input_string=input_string.replace('branch address','branch_add')
    if 'employee id' in input_string:
        input_string=input_string.replace('employee id','emp_id')
    if 'employee name' in input_string:
        input_string=input_string.replace('employee name','emp_name')
    if 'employee address' in input_string:
        input_string=input_string.replace('employee address','emp_add')
    if 'employee contact' in input_string:
        input_string=input_string.replace('employee contact','contact')
    if 'department' in input_string:
        input_string=input_string.replace('department','dept')
    if 'employee' in input_string:
        input_string=input_string.replace('employee','emp')
    # for name in re.findall("(?<=\bis )(\w+)",input_string):
    #     input_string.replace(name,name.capitalize(),1)
    print(input_string)

    queries = parser.parse_sentence(input_string)
    text1=str(queries[0])
    # print(text1)
    # if 'balewadi' in input_string.lower():
    #     text1="Select * From emp e INNER JOIN branch b ON e.branch_id = b.branch_id WHERE b.branch_name = 'Balewadi'"
    if 'AND' in text1:
        text1=text1.replace('AND',' AND')
    if 'icu' in text1:
        text1=text1.replace('icu','ICU')
    if 'it' in text1:
        text1=text1.replace('it','IT')
    if 'asthma' in text1:
        text1=text1.replace('asthma','Asthama')
    if 'balewadi' in text1:
        text1=text1.replace('balewadi','Balewadi')
    if "'db'" in text1:
        text1=text1.replace("'db'","'DB'")
    if '= OOV' in text1:
        text1=text1.replace('= OOV',"!= ''")
    if 'seema' in input_string:
        text1=text1.replace('seema','Seema')
    if 'pune' in input_string:
        text1=text1.replace('pune','Pune')
    if 'sinhgad' in input_string:
        text1=text1.replace('sinhgad','Sinhgad')
    for name in re.findall("(<|>|<=|>=) (.*)",text1):
        new_name = name[1].replace("'","")
        text1.replace(name[1],new_name,1)
    print(text1)

    try:
        sql = None
        # print(databaseFile[0:-5].lower())
        if os.path.exists(databaseFile[0:-4]+".db"):
            os.remove(databaseFile[0:-4]+".db")
        with open(databaseFile,'r') as sql_file:
            sql = sql_file.read()
        db = sqlite3.connect(databaseFile[0:-4]+".db")
        
        cr = db.cursor()
        if sql:
            cr.executescript(sql)
        # db.commit()
        result = cr.execute(text1)
        names = [description[0] for description in result.description]
        # print(result)
        data = []
        for row_no, row_data in enumerate(result):
            # if row_no != 0:
            ob = {}
            for index,data1 in list(enumerate(row_data)):
                ob[names[index]] = data1
            data.append(ob)
        if data:
            return data
        else:
            return None
    except Exception as e:
        print(str(e))
        return None
