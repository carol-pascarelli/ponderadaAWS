from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/soma")
def soma(a: int,b: int):
    return {"resultado":a+b}

@app.get("/subtracao")
def soma(a: int,b: int):
    return {"resultado":a-b}

@app.get("/multiplicacao")
def soma(a: int,b: int):
    return {"resultado":a*b}

@app.get("/divisao")
def soma(a: int,b: int):
    return {"resultado":a/b}