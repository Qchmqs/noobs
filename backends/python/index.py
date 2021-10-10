from flask import Flask, jsonify, make_response

app = Flask(__name__)


@app.route('/hello')
def hello():
    response = make_response({
        'message': 'hello FROM THE OTHER SIDE'
    })

    response.headers['Access-Control-Allow-Origin'] = '*'

    return (response, 200)


if __name__ == '__main__':
    app.run(port=3000)
