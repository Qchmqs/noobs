from flask import Flask, jsonify, make_response, request

app = Flask(__name__)


@app.route('/hello')
def hello():
    response = make_response({
        'message': 'hello FROM THE OTHER SIDE'
    })

    response.headers['Access-Control-Allow-Origin'] = '*'

    return (response, 200)

@app.route('/hi', methods = ['POST'])
def hi():
    hi = request.form.get('hi')
    print(hi)
    response = make_response({
        'message': 'hi FROM THE OTHER {0}'.format(hi)
    })

    return (response, 200)

if __name__ == '__main__':
    app.run(port=3000)
