from fastapi import FastAPI

app = FastAPI()

@app.get("/sentences")
def get_sentences():
    return {"sentences": ["I like apples.", "I like oranges."]}

@app.post("/sentences")
def register_sentence(sentence: str):
    # 文を登録する処理
    return {"message": "Sentence registered successfully"}

@app.put("/sentences/{sentence_id}")
def edit_sentence(sentence_id: int, sentence: str):
    # 文を編集する処理
    return {"message": "Sentence edited successfully"}

@app.delete("/sentences/{sentence_id}")
def delete_sentence(sentence_id: int):
    # 文を削除する処理
    return {"message": "Sentence deleted successfully"}

@app.get("/questions")
def get_question():
    # 問題を出題する処理
    return {"question": "What is the translation of 'apple'?"}

if __name__ == "__main__":
    import uvicorn

    uvicorn.run(app, host="0.0.0.0", port=8000)
