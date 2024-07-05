from flask import Flask 
app = Flask(__name__)

@app.route('/')
def head():
     return 'hello world simret'
@app.route('/secondpage')
def second():
     return 'this is flask '

@app.route('/third')
def third():
     return 'this is my 3 page '

@app.route('/third/<string:id>')
def forth(id):
     return f'id of this page is {id} '


if __name__ == '__main__':

     #app.run(debug=True,port=3000)
     
     app.run(host= '0.0.0.0', port=80)