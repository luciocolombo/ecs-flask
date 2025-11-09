from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/health", methods=["GET"])
def health():
    return jsonify(status="ok", msg="container healthy")


@app.route("/", methods=["GET"])
def root():
    return jsonify(status="ok", msg="Everything is running fine on /")


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
