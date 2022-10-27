from flask import Flask, render_template, request, url_for, redirect, flash, session
from flask_mysqldb import MySQL
import numpy as np
import pandas as pd

app = Flask(__name__)

app.secret_key = "randajuliomeza1611523016"

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'crudpy'

mysql = MySQL(app)

admin = {"username": "admin", "password": "admin"}

@app.route('/')
def index():
    return render_template('login.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        if username != admin['username'] and password != admin['password']:
            flash('wrong credential', 'danger')
            return render_template('login.html')
        else:
            session['logged_in'] = True
            return redirect(url_for('welcome'))
    return render_template('login.html')

@app.route('/logout')
def logout():
    session.pop('logged_in', None)
    flash('logout successfully', 'success')
    return redirect(url_for('login'))

@app.route('/welcome')
def welcome():
    # if session['logged_in'] != True:
    #     flash('welcome guest', 'success')
    # else:
    #     flash('login successfully', 'success')
    return render_template('index.html')

@app.route('/mobil1', methods = ['POST', 'GET'])
def mobil1():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM mobil WHERE merk = 'DAIHATSU'")
    rows = cur.fetchall()
    cur.close()
    nn = "Daihatsu"
    return render_template('mobil.html', rows=rows, nn=nn)

@app.route('/mobil2', methods = ['POST', 'GET'])
def mobil2():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM mobil WHERE merk = 'HONDA'")
    rows = cur.fetchall()
    cur.close()
    nn = "Honda"
    return render_template('mobil.html', rows=rows, nn=nn)

@app.route('/mobil3', methods = ['POST', 'GET'])
def mobil3():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM mobil WHERE merk = 'MITSUBISHI'")
    rows = cur.fetchall()
    cur.close()
    nn = "Mitsubishi"
    return render_template('mobil.html', rows=rows, nn=nn)

@app.route('/mobil4', methods = ['POST', 'GET'])
def mobil4():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM mobil WHERE merk = 'NISSAN'")
    rows = cur.fetchall()
    cur.close()
    nn = "Nissan"
    return render_template('mobil.html', rows=rows, nn=nn)

@app.route('/mobil5', methods = ['POST', 'GET'])
def mobil():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM mobil WHERE merk = 'SUZUKI'")
    rows = cur.fetchall()
    cur.close()
    nn = "Suzuki"
    return render_template('mobil.html', rows=rows, nn=nn)

@app.route('/mobil6', methods = ['POST', 'GET'])
def mobil6():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM mobil WHERE merk = 'TOYOTA'")
    rows = cur.fetchall()
    cur.close()
    nn = "Toyota"
    return render_template('mobil.html', rows=rows, nn=nn)

@app.route('/data_mobil', methods = ['POST', 'GET'])
def datamobil():
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM mobil')
    rows = cur.fetchall()
    cur.close()
    return render_template('datamobil.html', rows=rows)

@app.route('/create_mobil', methods = ['POST', 'GET'])
def create_mobil():
    if request.method == 'POST':
        inputmerk = request.form['inputmerk']
        inputjenis = request.form['inputjenis']
        inputmodel = request.form['inputmodel']
        inputvarian = request.form['inputvarian']
        inputjmcc = int(request.form['inputjmcc'])
        inputgambar = request.form['inputgambar']
        inputharga = int(request.form['inputharga'])
        inputcc = int(request.form['inputcc'])
        inputtrans = request.form['inputtrans']
        inputjbbm = request.form['inputjbbm']
        inputkbbm = float(request.form['inputkbbm'])
        inputpenum = int(request.form['inputpenum'])
        item = (inputmerk, inputjenis, inputmodel, inputvarian, inputharga, inputcc, inputtrans, inputpenum, inputjbbm, inputkbbm, inputjmcc, inputgambar)
        cur = mysql.connection.cursor()
        cur.execute(
            '''INSERT INTO mobil 
            (merk, jenis, model, varian, 
            harga, cc, transmisi, penumpang, jenis_bbm,
            konsumsi_bbm, jumlah_silinder, image) 
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)''', item)
        mysql.connection.commit()
        cur.close()
        flash('Data added successfully', 'success')
        return redirect(url_for('datamobil'))

    return render_template('datamobil.html')

@app.route('/update_mobil', methods = ['POST', 'GET'])
def update_mobil():
    if request.method == 'POST':
        id_mobil = int(request.form['id_mobil'])
        updatemerk = request.form['editmerk']
        updatejenis = request.form['editjenis']
        updatemodel = request.form['editmodel']
        updatevarian = request.form['editvarian']
        updatejmcc = int(request.form['editjmcc'])
        updategambar = request.form['editgambar']
        updateharga = int(request.form['editharga'])
        updatecc = int(request.form['editcc'])
        updatetrans = request.form['edittrans']
        updatejbbm = request.form['editjbbm']
        updatekbbm = float(request.form['editkbbm'])
        updatepenum = int(request.form['editpenum'])
        item = (updatemerk, updatejenis, updatemodel, updatevarian, updateharga, updatecc, updatetrans, updatepenum, updatejbbm, updatekbbm, updatejmcc, updategambar, id_mobil)
        cur = mysql.connection.cursor()
        cur.execute(
            '''UPDATE mobil 
            SET
            merk = %s, jenis = %s, model = %s, 
            varian = %s, harga = %s, cc = %s, 
            transmisi = %s, penumpang = %s, jenis_bbm = %s,
            konsumsi_bbm = %s, jumlah_silinder = %s, image = %s 
            WHERE id_mobil = %s''', item)
        mysql.connection.commit()
        cur.close()
        flash('Data updated successfully', 'success')
        return redirect(url_for('datamobil'))

    return render_template('datamobil.html')

@app.route('/delete_mobil', methods = ['POST', 'GET'])
def delete_mobil():
    if request.method == 'POST':
        id_mobil_todel = int(request.form['id_mobil_todel'])
        cur = mysql.connection.cursor()
        cur.execute(
            '''DELETE FROM mobil  
            WHERE id_mobil = %s''', (id_mobil_todel,))
        mysql.connection.commit()
        cur.close()
        flash('Data deleted successfully', 'success')
        return redirect(url_for('datamobil'))

    return render_template('datamobil.html')

@app.route('/data_alternatif', methods = ['POST', 'GET'])
def dataalternatif():
    cur = mysql.connection.cursor()

    cur.execute(
        '''SELECT DISTINCT mobil.id_mobil, mobil.merk, mobil.model, mobil.varian 
        FROM alternatif 
        JOIN mobil ON mobil.id_mobil = alternatif.id_mobil''')
    mobil = cur.fetchall()

    cur.execute('SELECT DISTINCT criteria.criteria FROM alternatif JOIN criteria ON criteria.id_criteria = alternatif.id_criteria')
    crit = cur.fetchall()

    data = []
    for item in mobil:
        cur.execute('''
            SELECT mobil.id_mobil, criteria.criteria, sub_criteria.sub_criteria
            FROM alternatif
            JOIN mobil ON mobil.id_mobil = alternatif.id_mobil
            JOIN criteria ON criteria.id_criteria = alternatif.id_criteria
            JOIN sub_criteria ON sub_criteria.id_sub_criteria = alternatif.id_sub_criteria
            WHERE mobil.id_mobil = %s''', [item[0]])
        data1 = cur.fetchall()
        data2 = []
        for a in data1:
            data2.append(a[2])
        data.append(data2)
    cur.close()

    return render_template('dataalternatif.html', rows=data, mobil=mobil, crit=crit)

@app.route('/app_spk')
def app_spk():
    return render_template('createbobot.html')

@app.route('/create_bobot', methods = ['POST', 'GET'])
def create_bobot():
    if request.method == 'POST':
        harga = int(request.form['harga'])
        cc = int(request.form['cc'])
        jenis_bbm = int(request.form['jenis_bbm'])
        konsumsi_bbm = int(request.form['konsumsi_bbm'])
        transmisi = int(request.form['transmisi'])
        penumpang = int(request.form['penumpang'])
        array = [('C01', harga),('C02', cc),('C03', transmisi),
                 ('C04', jenis_bbm),('C05', konsumsi_bbm),('C06', penumpang)]
        cur = mysql.connection.cursor()
        cur.execute('TRUNCATE TABLE bobot_criteria')
        for item in array:
            cur.execute('INSERT INTO bobot_criteria (id_criteria, bobot) VALUES (%s, %s)', item)
        mysql.connection.commit()
        cur.close()

        sub_harga = int(request.form['sub_harga'])
        if sub_harga == 1:
            hmurah = 9
            hsedang = 7
            hmahal = 5
        elif sub_harga == 2:
            hmurah = 7
            hsedang = 9
            hmahal = 5
        elif sub_harga == 3:
            hmurah = 5
            hsedang = 7
            hmahal = 9
        arraysh = [('SC011', hmurah), ('SC012', hsedang), ('SC013', hmahal)]

        sub_cc = int(request.form['sub_cc'])
        if sub_cc == 1:
            crendah = 9
            csedang = 7
            ctinggi = 5
        elif sub_cc == 2:
            crendah = 5
            csedang = 9
            ctinggi = 7
        elif sub_cc == 3:
            crendah = 5
            csedang = 7
            ctinggi = 9
        arraycc = [('SC021', crendah), ('SC022', csedang), ('SC023', ctinggi)]

        sub_transmisi = int(request.form['sub_transmisi'])
        if sub_transmisi == 1:
            tauto = 9
            tmanual = 1
        elif sub_transmisi == 2:
            tauto = 1
            tmanual = 9
        arraytt = [('SC031', tauto), ('SC032', tmanual)]

        sub_jenis_bbm = int(request.form['sub_jenis_bbm'])
        if sub_jenis_bbm == 1:
            jbensin = 9
            jdiesel = 1
        elif sub_jenis_bbm == 2:
            jbensin = 1
            jdiesel = 9
        arrayjb = [('SC041', jbensin), ('SC042', jdiesel)]

        sub_konsumsi_bbm = int(request.form['sub_konsumsi_bbm'])
        if sub_konsumsi_bbm == 1:
            kirit = 9
            ksedang = 7
            kboros = 5
        elif sub_konsumsi_bbm == 2:
            kirit = 7
            ksedang = 9
            kboros = 5
        elif sub_konsumsi_bbm == 3:
            kirit = 5
            ksedang = 7
            kboros = 9
        arraykb = [('SC051', kirit), ('SC052', ksedang), ('SC053', kboros)]

        sub_penumpang = int(request.form['sub_penumpang'])
        if sub_penumpang == 1:
            pdikit = 9
            psedang = 7
            pbanyak = 5
        elif sub_penumpang == 2:
            pdikit = 5
            psedang = 9
            pbanyak = 7
        elif sub_penumpang == 3:
            pdikit = 5
            psedang = 7
            pbanyak = 9
        arrayjp = [('SC061', pdikit), ('SC062', psedang), ('SC063', pbanyak)]

        array = np.concatenate((arraysh, arraycc, arraytt, arrayjb, arraykb, arrayjp))
        cur = mysql.connection.cursor()
        cur.execute('TRUNCATE TABLE bobot_sub_criteria')
        for item in array:
            cur.execute('INSERT INTO bobot_sub_criteria (id_sub_criteria, bobot) VALUES (%s, %s)', item)
        mysql.connection.commit()
        cur.close()
        return redirect(url_for('otomasi'))

    return render_template('rangking.html')

@app.route('/otomasi')
def otomasi():
    data()
    matrix_criteria()
    matrix_sub_criteria1()
    matrix_sub_criteria2()
    matrix_sub_criteria3()
    matrix_sub_criteria4()
    matrix_sub_criteria5()
    matrix_sub_criteria6()
    penilaian()
    rangking()
    return redirect(url_for('rangking'))

@app.route('/readbobot', methods = ['POST', 'GET'])
def data():
    cur = mysql.connection.cursor()
    cur.execute(
        '''SELECT criteria.criteria, bobot_criteria.bobot 
        FROM bobot_criteria 
        JOIN criteria ON criteria.id_criteria = bobot_criteria.id_criteria''')
    rows = cur.fetchall()
    cur.execute(
        '''SELECT sub_criteria.sub_criteria, bobot_sub_criteria.bobot 
        FROM bobot_sub_criteria 
        JOIN sub_criteria ON sub_criteria.id_sub_criteria = bobot_sub_criteria.id_sub_criteria 
        WHERE bobot_sub_criteria.id_sub_criteria LIKE "SC01%"''')
    hh = cur.fetchall()
    cur.execute(
        '''SELECT sub_criteria.sub_criteria, bobot_sub_criteria.bobot 
        FROM bobot_sub_criteria 
        JOIN sub_criteria ON sub_criteria.id_sub_criteria = bobot_sub_criteria.id_sub_criteria 
        WHERE bobot_sub_criteria.id_sub_criteria LIKE "SC02%"''')
    cc = cur.fetchall()
    cur.execute(
        '''SELECT sub_criteria.sub_criteria, bobot_sub_criteria.bobot 
        FROM bobot_sub_criteria 
        JOIN sub_criteria ON sub_criteria.id_sub_criteria = bobot_sub_criteria.id_sub_criteria 
        WHERE bobot_sub_criteria.id_sub_criteria LIKE "SC03%"''')
    tt = cur.fetchall()
    cur.execute(
        '''SELECT sub_criteria.sub_criteria, bobot_sub_criteria.bobot 
        FROM bobot_sub_criteria 
        JOIN sub_criteria ON sub_criteria.id_sub_criteria = bobot_sub_criteria.id_sub_criteria 
        WHERE bobot_sub_criteria.id_sub_criteria LIKE "SC04%"''')
    jb = cur.fetchall()
    cur.execute(
        '''SELECT sub_criteria.sub_criteria, bobot_sub_criteria.bobot 
        FROM bobot_sub_criteria 
        JOIN sub_criteria ON sub_criteria.id_sub_criteria = bobot_sub_criteria.id_sub_criteria 
        WHERE bobot_sub_criteria.id_sub_criteria LIKE "SC05%"''')
    kb = cur.fetchall()
    cur.execute(
        '''SELECT sub_criteria.sub_criteria, bobot_sub_criteria.bobot 
        FROM bobot_sub_criteria 
        JOIN sub_criteria ON sub_criteria.id_sub_criteria = bobot_sub_criteria.id_sub_criteria 
        WHERE bobot_sub_criteria.id_sub_criteria LIKE "SC06%"''')
    jp = cur.fetchall()
    cur.close()

    return render_template('readbobot.html', rows=rows, harga=hh, cc=cc, transmisi=tt, jenisbbm=jb, konsbbm=kb, jmlp=jp)

@app.route('/alternatif', methods = ['POST', 'GET'])
def alternatif():
    cur = mysql.connection.cursor()

    cur.execute(
        '''SELECT DISTINCT mobil.id_mobil, mobil.merk, mobil.model, mobil.varian 
        FROM alternatif 
        JOIN mobil ON mobil.id_mobil = alternatif.id_mobil''')
    mobil = cur.fetchall()

    cur.execute('SELECT DISTINCT criteria.criteria FROM alternatif JOIN criteria ON criteria.id_criteria = alternatif.id_criteria')
    crit = cur.fetchall()

    data = []
    for item in mobil:
        cur.execute('''
            SELECT mobil.id_mobil, criteria.criteria, sub_criteria.sub_criteria
            FROM alternatif
            JOIN mobil ON mobil.id_mobil = alternatif.id_mobil
            JOIN criteria ON criteria.id_criteria = alternatif.id_criteria
            JOIN sub_criteria ON sub_criteria.id_sub_criteria = alternatif.id_sub_criteria
            WHERE mobil.id_mobil = %s''', [item[0]])
        data1 = cur.fetchall()
        data2 = []
        for a in data1:
            data2.append(a[2])
        data.append(data2)
    cur.close()

    return render_template('alternatif.html', rows=data, mobil=mobil, crit=crit)

@app.route('/penilaian', methods = ['POST', 'GET'])
def penilaian():
    cur = mysql.connection.cursor()

    cur.execute(
        '''SELECT DISTINCT mobil.id_mobil, mobil.merk, mobil.model, mobil.varian 
        FROM alternatif 
        JOIN mobil ON mobil.id_mobil = alternatif.id_mobil''')
    mobil = cur.fetchall()

    cur.execute(
        'SELECT DISTINCT criteria.criteria FROM alternatif JOIN criteria ON criteria.id_criteria = alternatif.id_criteria')
    crit = cur.fetchall()

    data = []
    for item in mobil:
        cur.execute('''
            SELECT mobil.id_mobil, prioritas_criteria.priority*prioritas_sub_criteria.sub_priority AS NILAI
            FROM alternatif
            JOIN mobil ON mobil.id_mobil = alternatif.id_mobil
            JOIN criteria ON criteria.id_criteria = alternatif.id_criteria
            JOIN sub_criteria ON sub_criteria.id_sub_criteria = alternatif.id_sub_criteria
            JOIN prioritas_criteria ON prioritas_criteria.id_criteria = criteria.id_criteria 
            JOIN prioritas_sub_criteria ON prioritas_sub_criteria.id_sub_criteria = sub_criteria.id_sub_criteria 
            WHERE mobil.id_mobil = %s''', [item[0]])
        data1 = cur.fetchall()
        data2 = []
        for a in data1:
            data2.append(a[1])
        data.append(data2)
    cur.close()

    return render_template('penilaian.html', rows=data, mobil=mobil, crit=crit)

@app.route('/rangking', methods = ['POST', 'GET'])
def rangking():
    cur = mysql.connection.cursor()
    cur.execute('''
        SELECT mobil.*, SUM(prioritas_criteria.priority*prioritas_sub_criteria.sub_priority) AS NILAI 
        FROM alternatif 
        JOIN mobil ON mobil.id_mobil = alternatif.id_mobil 
        JOIN criteria ON criteria.id_criteria = alternatif.id_criteria 
        JOIN sub_criteria ON sub_criteria.id_sub_criteria = alternatif.id_sub_criteria 
        JOIN prioritas_criteria ON prioritas_criteria.id_criteria = criteria.id_criteria 
        JOIN prioritas_sub_criteria ON prioritas_sub_criteria.id_sub_criteria = sub_criteria.id_sub_criteria
        GROUP BY mobil.id_mobil 
        ORDER BY NILAI DESC
        LIMIT 5''')
    rows = cur.fetchall()
    cur.close()
    array = []
    for i in rows:
        data = list(i)
        array.append(data)
    for item in range(len(array)):
        del array[item][1:-1]
    cur = mysql.connection.cursor()
    cur.execute('TRUNCATE TABLE ranking')
    for item in array:
        cur.execute('INSERT INTO ranking (id_mobil, nilai) VALUES (%s, %s)', item)
    mysql.connection.commit()
    cur.close()

    return render_template('rangking.html', rows=rows)

@app.route('/cetak', methods = ['POST', 'GET'])
def cetak():
    cur = mysql.connection.cursor()
    cur.execute('''
            SELECT ranking.*, mobil.* 
            FROM ranking 
            JOIN mobil ON mobil.id_mobil = ranking.id_mobil ''')
    rows = cur.fetchall()
    cur.close()
    return render_template('cetak.html', rows=rows)

@app.route('/matrix_criteria', methods = ['POST', 'GET'])
def matrix_criteria():
    cur = mysql.connection.cursor()
    cur.execute(
        '''SELECT criteria.criteria, bobot_criteria.bobot 
        FROM bobot_criteria 
        JOIN criteria ON criteria.id_criteria = bobot_criteria.id_criteria 
        ORDER BY bobot_criteria.bobot DESC''')
    criteria = cur.fetchall()
    cur.close()
    diag = 1
    matrice = {
        criteria[0][0] : {
            criteria[0][0] : diag,
            criteria[1][0] : criteria[0][1]-criteria[1][1]+1,
            criteria[2][0] : criteria[0][1]-criteria[2][1]+1,
            criteria[3][0] : criteria[0][1]-criteria[3][1]+1,
            criteria[4][0] : criteria[0][1]-criteria[4][1]+1,
            criteria[5][0] : criteria[0][1]-criteria[5][1]+1,
        },
        criteria[1][0] : {
            criteria[0][0] : 1/(criteria[0][1]-criteria[1][1]+1),
            criteria[1][0] : diag,
            criteria[2][0] : criteria[1][1]-criteria[2][1]+1,
            criteria[3][0] : criteria[1][1]-criteria[3][1]+1,
            criteria[4][0] : criteria[1][1]-criteria[4][1]+1,
            criteria[5][0] : criteria[1][1]-criteria[5][1]+1,
        },
        criteria[2][0] : {
            criteria[0][0] : 1/(criteria[0][1]-criteria[2][1]+1),
            criteria[1][0] : 1/(criteria[1][1]-criteria[2][1]+1),
            criteria[2][0] : diag,
            criteria[3][0] : criteria[2][1]-criteria[3][1]+1,
            criteria[4][0] : criteria[2][1]-criteria[4][1]+1,
            criteria[5][0] : criteria[2][1]-criteria[5][1]+1,
        },
        criteria[3][0] : {
            criteria[0][0] : 1/(criteria[0][1]-criteria[3][1]+1),
            criteria[1][0] : 1/(criteria[1][1]-criteria[3][1]+1),
            criteria[2][0] : 1/(criteria[2][1]-criteria[3][1]+1),
            criteria[3][0] : diag,
            criteria[4][0] : criteria[3][1]-criteria[4][1]+1,
            criteria[5][0] : criteria[3][1]-criteria[5][1]+1,
        },
        criteria[4][0] : {
            criteria[0][0] : 1/(criteria[0][1]-criteria[4][1]+1),
            criteria[1][0] : 1/(criteria[1][1]-criteria[4][1]+1),
            criteria[2][0] : 1/(criteria[2][1]-criteria[4][1]+1),
            criteria[3][0] : 1/(criteria[3][1]-criteria[4][1]+1),
            criteria[4][0] : diag,
            criteria[5][0] : criteria[4][1]-criteria[5][1]+1,
        },
        criteria[5][0] : {
            criteria[0][0] : 1/(criteria[0][1]-criteria[5][1]+1),
            criteria[1][0] : 1/(criteria[1][1]-criteria[5][1]+1),
            criteria[2][0] : 1/(criteria[2][1]-criteria[5][1]+1),
            criteria[3][0] : 1/(criteria[3][1]-criteria[5][1]+1),
            criteria[4][0] : 1/(criteria[4][1]-criteria[5][1]+1),
            criteria[5][0] : diag,
        }
    }

    dataframe = pd.DataFrame.from_dict(matrice).T
    sumcol = dataframe.T.sum(axis=1)
    sumrow = pd.Series(data=sumcol, name='Jumlah')
    matrice = dataframe.append(sumrow)
    norm = normalize(matrice)
    prio = sum_norm(norm)
    cr = cri_consistency_ratio(sumrow, prio)
    matrix = matrice.to_dict('index')
    norms = norm.to_dict('index')
    prior = prio.to_dict('index')
    head = dict(list(matrix.items())[:-1])

    return render_template('matrixcriteria.html', cr=cr, matrix=matrix,
                           norms=norms, prior=prior,head=head)

def normalize(data):
    norm = data.div(data.loc['Jumlah'])
    norm1 = norm.drop(index='Jumlah')
    return norm1

def sum_norm(data):
    sumnorm = data.T.sum(axis=0)
    prio = sumnorm/len(data)
    sumnorm1 = {'Jumlah': sumnorm,
                'Prioritas': prio}
    sumnorm2 = pd.concat(sumnorm1, axis=1)
    return sumnorm2

def cri_consistency_ratio(sum, prio):
    index_random = 1.24
    prior = prio.drop('Jumlah', axis=1)
    harga = prior.loc['Harga'].at['Prioritas']
    cc = prior.loc['Kapasitas Silinder'].at['Prioritas']
    transmisi = prior.loc['Transmisi'].at['Prioritas']
    jenis_bbm = prior.loc['Jenis BBM'].at['Prioritas']
    konsumsi_bbm = prior.loc['Konsumsi BBM'].at['Prioritas']
    penumpang = prior.loc['Jumlah Penumpang'].at['Prioritas']
    array = [('C01', harga), ('C02', cc), ('C03', transmisi),
             ('C04', jenis_bbm), ('C05', konsumsi_bbm), ('C06', penumpang)]
    cur = mysql.connection.cursor()
    cur.execute('TRUNCATE TABLE prioritas_criteria')
    for item in array:
        cur.execute('INSERT INTO prioritas_criteria (id_criteria, priority) VALUES (%s, %s)', item)
    mysql.connection.commit()
    cur.close()
    lambda_max = sum * prior.T
    lambda_max1 = lambda_max.T.sum()
    consistency_index = (lambda_max1[0] - len(prior))/((len(prior)-1))
    consistency_ratio = consistency_index/index_random
    cr = {'Lambda Max': lambda_max1[0],
          'Consistency Index': consistency_index,
          'Consistency Ratio': consistency_ratio}
    return cr

@app.route('/matrix_sub_criteria1', methods = ['POST', 'GET'])
def matrix_sub_criteria1():
    id_sub = 'SC01%'
    cur = mysql.connection.cursor()
    cur.execute(
            '''SELECT sub_criteria.sub_criteria, bobot_sub_criteria.bobot 
            FROM bobot_sub_criteria 
            JOIN sub_criteria ON sub_criteria.id_sub_criteria = bobot_sub_criteria.id_sub_criteria 
            WHERE bobot_sub_criteria.id_sub_criteria LIKE %s ORDER BY bobot_sub_criteria.bobot DESC''', [id_sub])
    sub_criteria = cur.fetchall()
    cur.close()

    diag = 1
    matrice = {
        sub_criteria[0][0] : {
            sub_criteria[0][0] : diag,
            sub_criteria[1][0] : sub_criteria[0][1]-sub_criteria[1][1]+1,
            sub_criteria[2][0] : sub_criteria[0][1]-sub_criteria[2][1]+1,
        },
        sub_criteria[1][0] : {
            sub_criteria[0][0] : 1/(sub_criteria[0][1]-sub_criteria[1][1]+1),
            sub_criteria[1][0] : diag,
            sub_criteria[2][0] : sub_criteria[1][1]-sub_criteria[2][1]+1,
        },
        sub_criteria[2][0] : {
            sub_criteria[0][0] : 1/(sub_criteria[0][1]-sub_criteria[2][1]+1),
            sub_criteria[1][0] : 1/(sub_criteria[1][1]-sub_criteria[2][1]+1),
            sub_criteria[2][0] : diag,
        },
    }

    dataframe = pd.DataFrame.from_dict(matrice).T
    sumcol = dataframe.T.sum(axis=1)
    sumrow = pd.Series(data=sumcol, name='Jumlah')
    matrice = dataframe.append(sumrow)
    norm = normalize(matrice)
    prio = sum_norm_sub(norm)
    cr = sub_consistency_ratio1(sumrow, prio)
    nn = "Harga"
    matrix = matrice.to_dict('index')
    norms = norm.to_dict('index')
    prior = prio.to_dict('index')
    head = dict(list(matrix.items())[:-1])

    return render_template('matrixsubcriteria.html', cr=cr, nn=nn,
                           matrix=matrix, norms=norms, prior=prior, head=head)

def sum_norm_sub(data):
    sumnorm = data.T.sum(axis=0)
    prio = sumnorm/len(data)
    maks = max(prio)
    sub_prio = prio/maks
    sumnorm1 = {'Jumlah': sumnorm,
                'Prioritas': prio,
                'Sub Prioritas': sub_prio}
    sumnorm2 = pd.concat(sumnorm1, axis=1)
    return sumnorm2

def sub_consistency_ratio1(sum, prio):
    index_random = 0.58
    prior = prio.drop('Jumlah', axis=1)
    murah = prior.loc['Murah'].at['Sub Prioritas']
    sedang = prior.loc['Sedang'].at['Sub Prioritas']
    mahal = prior.loc['Mahal'].at['Sub Prioritas']
    array = [('SC011', murah), ('SC012', sedang), ('SC013', mahal)]
    cur = mysql.connection.cursor()
    cur.execute('DELETE FROM prioritas_sub_criteria WHERE id_sub_criteria LIKE "SC01%"')
    for item in array:
        cur.execute('INSERT INTO prioritas_sub_criteria (id_sub_criteria, sub_priority) VALUES (%s, %s)', item)
    mysql.connection.commit()
    cur.close()
    lambda_max = sum * prior.T
    lambda_max1 = lambda_max.T.sum()
    consistency_index = (lambda_max1[0] - len(prior))/((len(prior)-1))
    consistency_ratio = consistency_index/index_random
    cr = {'Lambda Max': lambda_max1[0],
          'Consistency Index': consistency_index,
          'Consistency Ratio': consistency_ratio}
    return cr

@app.route('/matrix_sub_criteria2', methods = ['POST', 'GET'])
def matrix_sub_criteria2():
    id_sub = 'SC02%'
    cur = mysql.connection.cursor()
    cur.execute(
        '''SELECT sub_criteria.sub_criteria, bobot_sub_criteria.bobot 
        FROM bobot_sub_criteria 
        JOIN sub_criteria ON sub_criteria.id_sub_criteria = bobot_sub_criteria.id_sub_criteria 
        WHERE bobot_sub_criteria.id_sub_criteria LIKE %s ORDER BY bobot_sub_criteria.bobot DESC''', [id_sub])
    sub_criteria = cur.fetchall()
    cur.close()

    diag = 1
    matrice = {
        sub_criteria[0][0] : {
            sub_criteria[0][0] : diag,
            sub_criteria[1][0] : sub_criteria[0][1]-sub_criteria[1][1]+1,
            sub_criteria[2][0] : sub_criteria[0][1]-sub_criteria[2][1]+1,
        },
        sub_criteria[1][0] : {
            sub_criteria[0][0] : 1/(sub_criteria[0][1]-sub_criteria[1][1]+1),
            sub_criteria[1][0] : diag,
            sub_criteria[2][0] : sub_criteria[1][1]-sub_criteria[2][1]+1,
        },
        sub_criteria[2][0] : {
            sub_criteria[0][0] : 1/(sub_criteria[0][1]-sub_criteria[2][1]+1),
            sub_criteria[1][0] : 1/(sub_criteria[1][1]-sub_criteria[2][1]+1),
            sub_criteria[2][0] : diag,
        },
    }

    dataframe = pd.DataFrame.from_dict(matrice).T
    sumcol = dataframe.T.sum(axis=1)
    sumrow = pd.Series(data=sumcol, name='Jumlah')
    matrice = dataframe.append(sumrow)
    norm = normalize(matrice)
    prio = sum_norm_sub(norm)
    cr = sub_consistency_ratio2(sumrow, prio)
    nn = "Kapasitas Silinder"
    matrix = matrice.to_dict('index')
    norms = norm.to_dict('index')
    prior = prio.to_dict('index')
    head = dict(list(matrix.items())[:-1])

    return render_template('matrixsubcriteria.html', cr=cr, nn=nn,
                           matrix=matrix, norms=norms, prior=prior, head=head)

def sub_consistency_ratio2(sum, prio):
    index_random = 0.58
    prior = prio.drop('Jumlah', axis=1)
    rendah = prior.loc['Rendah'].at['Sub Prioritas']
    sedang = prior.loc['Sedang'].at['Sub Prioritas']
    tinggi = prior.loc['Tinggi'].at['Sub Prioritas']
    array = [('SC021', rendah), ('SC022', sedang), ('SC023', tinggi)]
    cur = mysql.connection.cursor()
    cur.execute('DELETE FROM prioritas_sub_criteria WHERE id_sub_criteria LIKE "SC02%"')
    for item in array:
        cur.execute('INSERT INTO prioritas_sub_criteria (id_sub_criteria, sub_priority) VALUES (%s, %s)', item)
    mysql.connection.commit()
    cur.close()
    lambda_max = sum * prior.T
    lambda_max1 = lambda_max.T.sum()
    consistency_index = (lambda_max1[0] - len(prior))/((len(prior)-1))
    consistency_ratio = consistency_index/index_random
    cr = {'Lambda Max' : lambda_max1[0],
          'Consistency Index': consistency_index,
          'Consistency Ratio': consistency_ratio}
    return cr

@app.route('/matrix_sub_criteria3', methods = ['POST', 'GET'])
def matrix_sub_criteria3():
    id_sub = 'SC03%'
    cur = mysql.connection.cursor()
    cur.execute(
        '''SELECT sub_criteria.sub_criteria, bobot_sub_criteria.bobot 
        FROM bobot_sub_criteria 
        JOIN sub_criteria ON sub_criteria.id_sub_criteria = bobot_sub_criteria.id_sub_criteria 
        WHERE bobot_sub_criteria.id_sub_criteria LIKE %s ORDER BY bobot_sub_criteria.bobot DESC''', [id_sub])
    sub_criteria = cur.fetchall()
    cur.close()

    diag = 1
    matrice = {
        sub_criteria[0][0] : {
            sub_criteria[0][0] : diag,
            sub_criteria[1][0] : sub_criteria[0][1]-sub_criteria[1][1]+1,
        },
        sub_criteria[1][0] : {
            sub_criteria[0][0] : 1/(sub_criteria[0][1]-sub_criteria[1][1]+1),
            sub_criteria[1][0] : diag,
        },
    }

    dataframe = pd.DataFrame.from_dict(matrice).T
    sumcol = dataframe.T.sum(axis=1)
    sumrow = pd.Series(data=sumcol, name='Jumlah')
    matrice = dataframe.append(sumrow)
    norm = normalize(matrice)
    prio = sum_norm_sub(norm)
    cr = sub_consistency_ratio3(sumrow, prio)
    nn = "Transmisi"
    matrix = matrice.to_dict('index')
    norms = norm.to_dict('index')
    prior = prio.to_dict('index')
    head = dict(list(matrix.items())[:-1])

    return render_template('matrixsubcriteria.html', cr=cr, nn=nn,
                           matrix=matrix, norms=norms, prior=prior, head=head)

def sub_consistency_ratio3(sum, prio):
    index_random = 0.00
    prior = prio.drop('Jumlah', axis=1)
    manual = prior.loc['Manual'].at['Sub Prioritas']
    automatic = prior.loc['Automatic'].at['Sub Prioritas']
    array = [('SC031', manual), ('SC032', automatic)]
    cur = mysql.connection.cursor()
    cur.execute('DELETE FROM prioritas_sub_criteria WHERE id_sub_criteria LIKE "SC03%"')
    for item in array:
        cur.execute('INSERT INTO prioritas_sub_criteria (id_sub_criteria, sub_priority) VALUES (%s, %s)', item)
    mysql.connection.commit()
    cur.close()
    lambda_max = sum * prior.T
    lambda_max1 = lambda_max.T.sum()
    consistency_index = (lambda_max1[0] - len(prior))/((len(prior)-1))
    consistency_ratio = consistency_index/index_random
    cr = {'Lambda Max': lambda_max1[0],
          'Consistency Index': consistency_index,
          'Consistency Ratio': consistency_ratio}
    return cr

@app.route('/matrix_sub_criteria4', methods = ['POST', 'GET'])
def matrix_sub_criteria4():
    id_sub = 'SC04%'
    cur = mysql.connection.cursor()
    cur.execute(
        '''SELECT sub_criteria.sub_criteria, bobot_sub_criteria.bobot 
        FROM bobot_sub_criteria 
        JOIN sub_criteria ON sub_criteria.id_sub_criteria = bobot_sub_criteria.id_sub_criteria 
        WHERE bobot_sub_criteria.id_sub_criteria LIKE %s ORDER BY bobot_sub_criteria.bobot DESC''', [id_sub])
    sub_criteria = cur.fetchall()
    cur.close()

    diag = 1
    matrice = {
        sub_criteria[0][0] : {
            sub_criteria[0][0] : diag,
            sub_criteria[1][0] : sub_criteria[0][1]-sub_criteria[1][1]+1,
        },
        sub_criteria[1][0] : {
            sub_criteria[0][0] : 1/(sub_criteria[0][1]-sub_criteria[1][1]+1),
            sub_criteria[1][0] : diag,
        },
    }

    dataframe = pd.DataFrame.from_dict(matrice).T
    sumcol = dataframe.T.sum(axis=1)
    sumrow = pd.Series(data=sumcol, name='Jumlah')
    matrice = dataframe.append(sumrow)
    norm = normalize(matrice)
    prio = sum_norm_sub(norm)
    cr = sub_consistency_ratio4(sumrow, prio)
    nn = "Jenis BBM"
    matrix = matrice.to_dict('index')
    norms = norm.to_dict('index')
    prior = prio.to_dict('index')
    head = dict(list(matrix.items())[:-1])

    return render_template('matrixsubcriteria.html', cr=cr, nn=nn,
                           matrix=matrix, norms=norms, prior=prior, head=head)

def sub_consistency_ratio4(sum, prio):
    index_random = 0.00
    prior = prio.drop('Jumlah', axis=1)
    bensin = prior.loc['Bensin'].at['Sub Prioritas']
    diesel = prior.loc['Diesel'].at['Sub Prioritas']
    array = [('SC041', bensin), ('SC042', diesel)]
    cur = mysql.connection.cursor()
    cur.execute('DELETE FROM prioritas_sub_criteria WHERE id_sub_criteria LIKE "SC04%"')
    for item in array:
        cur.execute('INSERT INTO prioritas_sub_criteria (id_sub_criteria, sub_priority) VALUES (%s, %s)', item)
    mysql.connection.commit()
    cur.close()
    lambda_max = sum * prior.T
    lambda_max1 = lambda_max.T.sum()
    consistency_index = (lambda_max1[0] - len(prior))/((len(prior)-1))
    consistency_ratio = consistency_index/index_random
    cr = {'Lambda Max': lambda_max1[0],
          'Consistency Index': consistency_index,
          'Consistency Ratio': consistency_ratio}
    return cr

@app.route('/matrix_sub_criteria5', methods = ['POST', 'GET'])
def matrix_sub_criteria5():
    id_sub = 'SC05%'
    cur = mysql.connection.cursor()
    cur.execute(
        '''SELECT sub_criteria.sub_criteria, bobot_sub_criteria.bobot 
        FROM bobot_sub_criteria 
        JOIN sub_criteria ON sub_criteria.id_sub_criteria = bobot_sub_criteria.id_sub_criteria 
        WHERE bobot_sub_criteria.id_sub_criteria LIKE %s ORDER BY bobot_sub_criteria.bobot DESC''', [id_sub])
    sub_criteria = cur.fetchall()
    cur.close()

    diag = 1
    matrice = {
        sub_criteria[0][0] : {
            sub_criteria[0][0] : diag,
            sub_criteria[1][0] : sub_criteria[0][1]-sub_criteria[1][1]+1,
            sub_criteria[2][0] : sub_criteria[0][1]-sub_criteria[2][1]+1,
        },
        sub_criteria[1][0] : {
            sub_criteria[0][0] : 1/(sub_criteria[0][1]-sub_criteria[1][1]+1),
            sub_criteria[1][0] : diag,
            sub_criteria[2][0] : sub_criteria[1][1]-sub_criteria[2][1]+1,
        },
        sub_criteria[2][0] : {
            sub_criteria[0][0] : 1/(sub_criteria[0][1]-sub_criteria[2][1]+1),
            sub_criteria[1][0] : 1/(sub_criteria[1][1]-sub_criteria[2][1]+1),
            sub_criteria[2][0] : diag,
        },
    }

    dataframe = pd.DataFrame.from_dict(matrice).T
    sumcol = dataframe.T.sum(axis=1)
    sumrow = pd.Series(data=sumcol, name='Jumlah')
    matrice = dataframe.append(sumrow)
    norm = normalize(matrice)
    prio = sum_norm_sub(norm)
    cr = sub_consistency_ratio5(sumrow, prio)
    nn = "Konsumsi BBM"
    matrix = matrice.to_dict('index')
    norms = norm.to_dict('index')
    prior = prio.to_dict('index')
    head = dict(list(matrix.items())[:-1])

    return render_template('matrixsubcriteria.html', cr=cr, nn=nn,
                           matrix=matrix, norms=norms, prior=prior, head=head)

def sub_consistency_ratio5(sum, prio):
    index_random = 0.58
    prior = prio.drop('Jumlah', axis=1)
    irit = prior.loc['Irit'].at['Sub Prioritas']
    sedang = prior.loc['Sedang'].at['Sub Prioritas']
    boros = prior.loc['Boros'].at['Sub Prioritas']
    array = [('SC051', irit), ('SC052', sedang), ('SC053', boros)]
    cur = mysql.connection.cursor()
    cur.execute('DELETE FROM prioritas_sub_criteria WHERE id_sub_criteria LIKE "SC05%"')
    for item in array:
        cur.execute('INSERT INTO prioritas_sub_criteria (id_sub_criteria, sub_priority) VALUES (%s, %s)', item)
    mysql.connection.commit()
    cur.close()
    lambda_max = sum * prior.T
    lambda_max1 = lambda_max.T.sum()
    consistency_index = (lambda_max1[0] - len(prior))/((len(prior)-1))
    consistency_ratio = consistency_index/index_random
    cr = {'Lambda Max': lambda_max1[0],
          'Consistency Index': consistency_index,
          'Consistency Ratio': consistency_ratio}
    return cr

@app.route('/matrix_sub_criteria6', methods = ['POST', 'GET'])
def matrix_sub_criteria6():
    id_sub = 'SC06%'
    cur = mysql.connection.cursor()
    cur.execute(
        '''SELECT sub_criteria.sub_criteria, bobot_sub_criteria.bobot 
        FROM bobot_sub_criteria 
        JOIN sub_criteria ON sub_criteria.id_sub_criteria = bobot_sub_criteria.id_sub_criteria 
        WHERE bobot_sub_criteria.id_sub_criteria LIKE %s ORDER BY bobot_sub_criteria.bobot DESC''', [id_sub])
    sub_criteria = cur.fetchall()
    cur.close()

    diag = 1
    matrice = {
        sub_criteria[0][0] : {
            sub_criteria[0][0] : diag,
            sub_criteria[1][0] : sub_criteria[0][1]-sub_criteria[1][1]+1,
            sub_criteria[2][0] : sub_criteria[0][1]-sub_criteria[2][1]+1,
        },
        sub_criteria[1][0] : {
            sub_criteria[0][0] : 1/(sub_criteria[0][1]-sub_criteria[1][1]+1),
            sub_criteria[1][0] : diag,
            sub_criteria[2][0] : sub_criteria[1][1]-sub_criteria[2][1]+1,
        },
        sub_criteria[2][0] : {
            sub_criteria[0][0] : 1/(sub_criteria[0][1]-sub_criteria[2][1]+1),
            sub_criteria[1][0] : 1/(sub_criteria[1][1]-sub_criteria[2][1]+1),
            sub_criteria[2][0] : diag,
        },
    }

    dataframe = pd.DataFrame.from_dict(matrice).T
    sumcol = dataframe.T.sum(axis=1)
    sumrow = pd.Series(data=sumcol, name='Jumlah')
    matrice = dataframe.append(sumrow)
    norm = normalize(matrice)
    prio = sum_norm_sub(norm)
    cr = sub_consistency_ratio6(sumrow, prio)
    nn = "Jumlah Penumpang"
    matrix = matrice.to_dict('index')
    norms = norm.to_dict('index')
    prior = prio.to_dict('index')
    head = dict(list(matrix.items())[:-1])

    return render_template('matrixsubcriteria.html', cr=cr, nn=nn,
                           matrix=matrix, norms=norms, prior=prior, head=head)

def sub_consistency_ratio6(sum, prio):
    index_random = 0.58
    prior = prio.drop('Jumlah', axis=1)
    sedikit = prior.loc['Sedikit'].at['Sub Prioritas']
    sedang = prior.loc['Sedang'].at['Sub Prioritas']
    banyak = prior.loc['Banyak'].at['Sub Prioritas']
    array = [('SC061', sedikit), ('SC062', sedang), ('SC063', banyak)]
    cur = mysql.connection.cursor()
    cur.execute('DELETE FROM prioritas_sub_criteria WHERE id_sub_criteria LIKE "SC06%"')
    for item in array:
        cur.execute('INSERT INTO prioritas_sub_criteria (id_sub_criteria, sub_priority) VALUES (%s, %s)', item)
    mysql.connection.commit()
    cur.close()
    lambda_max = sum * prior.T
    lambda_max1 = lambda_max.T.sum()
    consistency_index = (lambda_max1[0] - len(prior))/((len(prior)-1))
    consistency_ratio = consistency_index/index_random
    cr = {'Lambda Max': lambda_max1[0],
          'Consistency Index': consistency_index,
          'Consistency Ratio': consistency_ratio}
    return cr

if __name__ == "__main__":
    app.run()




