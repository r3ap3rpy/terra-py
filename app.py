from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
	return "Welcome to Python Container deployed with terraform!"

if __name__ == '__main__':
	app.run('0.0.0.0', port = 8080, debug = True)
