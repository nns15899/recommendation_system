from django.shortcuts import render
import psycopg2

conn = psycopg2.connect("dbname='scs' user='postgres' host='' password='mypassword'")
cur = conn.cursor()
cur.execute("""SELECT * from list_college;""")
rows = cur.fetchall()
dict=[]
for i in rows:
    dict.append(i)

def sim_distance(prefs,person1,person2):
    s1={}
    for item in prefs[person1]:
        if item in prefs[person2]:
            s1[item]=1
    if len(s1)==0: return 0
    sum_of_squares=sum([pow(prefs[person1][item]-prefs[person2][item],2) for item in prefs[person1] if item in prefs[person2]])
    return 1/(1+sum_of_squares)

def topMatches(prefs,person,n=5,similarity=sim_distance):
    scores=list((similarity(prefs,person,other) for other in prefs if other!=person))
    scores.sort()
    scores.reverse()
    return scores


my_dict={'dict':dict}
def find(request):
    if request.method=='POST':
        name=request.POST['name']
        jeemains=request.POST['jeemains']
        jeeadvance=request.POST['jeeadvance']
        csepref=request.POST['csepref']
        ecepref=request.POST['ecepref']
        eepref=request.POST['eepref']
        mepref=request.POST['mepref']
        itpref=request.POST['itpref']
        cepref=request.POST['cepref']
        chepref=request.POST['chepref']
        anepref=request.POST['anepref']
        agrpref=request.POST['agrpref']
        btpref=request.POST['btpref']
        sql="""SELECT * from list_college WHERE jee_mains<=%s AND jee_advance<=%s;"""
        cur.execute(sql,(jeemains,jeeadvance))
        rows = cur.fetchall()
        avail_dict=[]
        clgnames=[]
        for i in rows:
            clgnames.append(i[0])
            avail_dict.append(i)
        sql="""INSERT INTO prefs (name,jeemains,jeeadvance,csepref,ecepref,eepref,mepref,itpref,cepref,chepref,anepref,agrpref,btpref) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);"""
        cur.execute(sql,(name,jeemains,jeeadvance,csepref,ecepref,eepref,mepref,itpref,cepref,chepref,anepref,agrpref,btpref))
        conn.commit()
        sql="""SELECT * from prefs;"""
        cur.execute(sql)
        prefs=cur.fetchall()
        dictprefs={}
        for i in prefs:
            dictprefs[i[0]]={}
            dictprefs[i[0]]['csepref']=i[3]
            dictprefs[i[0]]['ecepref']=i[4]
            dictprefs[i[0]]['eepref']=i[5]
            dictprefs[i[0]]['mepref']=i[6]
            dictprefs[i[0]]['itpref']=i[7]
            dictprefs[i[0]]['cepref']=i[8]
            dictprefs[i[0]]['chepref']=i[9]
            dictprefs[i[0]]['anepref']=i[10]
            dictprefs[i[0]]['agrpref']=i[11]
            dictprefs[i[0]]['btpref']=i[12]
        #pref_dict={'dictprefs':dictprefs}
        person=name
        scores=topMatches(dictprefs,person,n=3)
        print(scores)
        cur.execute("""SELECT name from apply;""")
        rows = cur.fetchall()
        names_student=[]
        for i in rows:
            names_student.append(i[0])
        recommended_students=[]
        final={}
        for i in names_student:
            score=sim_distance(dictprefs,i,person)
            if score in scores:
                final[score]=i
        for i in scores:
            recommended_students.append(final[i])
        recommended_clgs=[]
        for i in recommended_students:
            sql="""SELECT college FROM apply WHERE name=%s;"""
            cur.execute(sql,(i,))
            rows = cur.fetchall()
            for i in rows:
                recommended_clgs.append(i[0])
      
        college_dict={'avail_dict':avail_dict,'clgnames':clgnames,'name':name,'recommended_clgs':recommended_clgs}
        return render(request,'enterdata/apply.html',context=college_dict)
    return render(request,'enterdata/findcolleges.html')

def listcolleges(request):
    print(rows)
    return render(request,'enterdata/collegeslist.html',context=my_dict)

def apply(request):
    if request.method=='POST':
        name=request.POST['studentname']
        selectclg=request.POST['selectclg']
        sql="""INSERT INTO apply (name,college) VALUES (%s,%s);"""
        cur.execute(sql,(name,selectclg))
        conn.commit()
        return render(request,'enterdata/success.html')

    return render(request,'enterdata/apply.html')

def insertcollege(request):
    if request.method=='POST':
        name=request.POST['name']
        jee_mains=request.POST['jeemains']
        jee_advance=request.POST['jeeadvance']
        sql="""INSERT INTO list_college (college_name,jee_mains,jee_advance) VALUES (%s,%s,%s);"""
        cur.execute(sql,(name,jee_mains,jee_advance))
        conn.commit()
    return render(request,'enterdata/insertcollege.html') 