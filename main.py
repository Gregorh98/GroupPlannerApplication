import secrets

from flask import Flask, render_template, request, redirect, session, url_for

import db

app = Flask(__name__)

secretKey = secrets.token_hex(16)
app.config['SECRET_KEY'] = secretKey


@app.route("/", methods=("POST", "GET"))
def index():
    if request.method == "POST":
        name = request.form["name"].upper()
        groupCode = request.form["groupCode"].upper()
        id = db.getUserId(name, groupCode)

        if id is None:
            # TODO: Error Handling here
            db.addUser(name, groupCode)

        session["name"] = name
        session["groupCode"] = groupCode
        session["id"] = db.getUserId(name, groupCode)

        request.method = "GET"
        return redirect(url_for("home"))

    if "id" in session.keys():
        return redirect(url_for("home"))
    else:
        return render_template("index.html")


@app.route("/home")
def home():
    if "id" in session.keys():
        return render_template("home.html", groupMembers=db.getGroupMemberNames(session["groupCode"], session["name"]))
    else:
        return redirect(url_for("index"))


@app.route("/logout")
def logout():
    session.clear()
    return redirect(url_for("index"))


if __name__ == '__main__':
    app.run(host="0.0.0.0", debug=True)
