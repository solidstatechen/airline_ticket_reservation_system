#!C:/Users/lx615/AppData/Local/Programs/Python/Python38-32/python

#Import Flask Library
from flask import Flask, render_template, request, session, url_for, redirect, flash
import mysql.connector

#Initialize the app from Flask
app = Flask(__name__)

#Configure MySQL
conn = mysql.connector.connect(host='localhost',
                       user='root',
                       password='',
                       database='airline_reservation')


#Define a route to hello function
@app.route('/')
def hello():
    return render_template('index.html')

#Define route for login
@app.route('/login')
def login():
    return render_template('login.html')

#Define route for register
@app.route('/register')
def register():
    return render_template('register.html')

#Authenticates the login
@app.route('/loginAuth', methods=['GET', 'POST'])
def loginAuth():
    #grabs information from the forms
    username = request.form['username']
    password = request.form['password']

    #cursor used to send queries
    cursor = conn.cursor()
    #executes query
    query = "SELECT * FROM user WHERE username = \'{}\' and password = md5(\'{}\')"
    cursor.execute(query.format(username, password))
    #stores the results in a variable
    data = cursor.fetchone()
    #use fetchall() if you are expecting more than 1 data row
    cursor.close()
    error = None
    if(data):
        #creates a session for the the user
        #session is a built in
        session['username'] = username
        session['account_type'] = data[2] #data[2] is the account_type :)
        return redirect(url_for('home'))
    else:
        #returns an error message to the html page
        error = 'Invalid login or username'
        return render_template('login.html', error=error)

#Authenticates the register
@app.route('/registerAuth', methods=['GET', 'POST'])
def registerAuth():
    #grabs information from the forms
    username = request.form['username']
    password = request.form['password']
    account_type = request.form['radio_answer']

#   if not len(password) >= 4:
#                flash("Password length must be at least 4 characters")
 #               return redirect(request.url)

    #cursor used to send queries

    cursor = conn.cursor()
    #executes query
    query = "SELECT * FROM user WHERE username = \'{}\'" # removed account_type check as username is primary key anyway
    cursor.execute(query.format(username))
    #stores the results in a variable
    data = cursor.fetchone()
    #use fetchall() if you are expecting more than 1 data row
    error = None

    if(data):
        #If the previous query returns data, then user exists
        error = "This user already exists"
        return render_template('register.html', error = error)
    else:
        ins = "INSERT INTO user VALUES(\'{}\', md5(\'{}\'), \'{}\')"
        cursor.execute(ins.format(username, password, account_type))
        conn.commit()
        cursor.close()
        #flash("You are logged in") #additional functionality see comments in index.hmtl
        session['username'] = username
        session['account_type'] = account_type 
        session['password'] = password

        if account_type == 'customer':
            url_for = 'cus_register.html'
        elif account_type == 'booking_agent':
            url_for = 'booking_register.html'
        elif account_type == 'airline_staff':
            url_for = 'staff_register.html'

        return render_template(url_for, username = username, account_type = account_type)

@app.route('/home')
def home():
    username = session['username']
    account_type = session['account_type']
    cursor = conn.cursor()
    if account_type == 'customer':
        page_to_render = 'user_home_page.html'
        query = "SELECT * FROM flight WHERE flight.status = 'upcoming'"
    
    elif account_type == 'booking_agent':
        page_to_render = 'booking_home_page.html'
        query = "SELECT * FROM flight WHERE flight.status = 'upcoming' and "

    elif account_type == 'airline_staff':
        page_to_render = 'staff_home_page.html'
        query = "SELECT * FROM flight WHERE flight.status = 'upcoming'"

    cursor.execute(query)
    data1 = cursor.fetchall() 
    cursor.close()

    return render_template(page_to_render, username=username, flights=data1, account_type=account_type)

@app.route('/cus_register', methods=['GET', 'POST'])
def cus_register():
    #inserts details from page into database
    username = session['username']
    password = session['password'] #PROLLY NOT THE SAFEST WAY TO GET PASSWORD FROM 1ST FROM TO 2ND FORM
    session['password'] = ''
    account_type = session['account_type']
    name = request.form['name']
    building_num = request.form['building_num']
    street = request.form['street']
    city = request.form['city']
    state = request.form['state']
    phone_num = request.form['phone_num']
    pass_num = request.form['pass_num']
    pass_exp = request.form['pass_exp']
    pass_country = request.form['pass_country']
    dob = request.form['dob']

    cursor = conn.cursor()
    ins = "INSERT INTO customer VALUES(\'{}\',\'{}\', md5(\'{}\'), \'{}\', \'{}\', \'{}\', \'{}\', \'{}\', \'{}\', \'{}\', \'{}\', \'{}\')"
    cursor.execute(ins.format(username, name, password, building_num, street, city, state, phone_num, pass_num,pass_exp,pass_country,dob))
    conn.commit()   
    cursor.close()
    #then calls /home to get the new users homepage
    return redirect(url_for('home'))

@app.route('/staff_register', methods=['GET', 'POST'])
def staff_register():
    #inserts details from page into database
    username = session['username']
    account_type = session['account_type']
    cursor = conn.cursor()
    query = "SELECT * FROM flight WHERE flight.status = 'upcoming'"
    cursor.execute(query)
    data1 = cursor.fetchall() 
    cursor.close()
    #then calls /home to get the new users homepage
    return redirect(url_for('home'))

@app.route('/booking_register', methods=['GET', 'POST'])
def booking_register():
    #inserts details from page into database
    username = session['username']
    account_type = session['account_type']
    cursor = conn.cursor()
    query = "SELECT * FROM flight WHERE flight.status = 'upcoming'"
    cursor.execute(query)
    data1 = cursor.fetchall() 
    cursor.close()
    #then calls /home to get the new users homepage
    return redirect(url_for('home'))

    
@app.route('/search', methods=['GET', 'POST'])
def search():
    if request.method == 'POST': 
        departure_airport = request.form['dept_airport']
        arrival_airport = request.form['arrival_airport']
        departure_time = request.form['dept_time']

        cursor = conn.cursor();
        query = "SELECT flight_num, departure_time, arrival_time FROM flight WHERE departure_airport = %s and arrival_airport = %s and departure_time = %s"
        cursor.execute(query, (departure_airport, arrival_airport, departure_time))
        data = cursor.fetchall() 
        cursor.close()
        return render_template('index.html', flights=data)
    else:
        return render_template('index.html')
    


@app.route('/logout')
def logout():
    session.pop('username')
    return redirect('/')
        
app.secret_key = 'some key that you will never guess'
#Run the app on localhost port 5000
#debug = True -> you don't have to restart flask
#for changes to go through, TURN OFF FOR PRODUCTION
if __name__ == "__main__":
    app.run('127.0.0.1', 5000, debug = True)
