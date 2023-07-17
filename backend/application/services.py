from domain.models import EnglishText
from domain.repositories import EnglishTextRepository


class EnglishTextService:
    def __init__(self, repository: EnglishTextRepository):
        self.repository = repository

    def register_english_text(self, text: str):
        english_text = EnglishText(text)
        self.repository.save(english_text)

    def get_all_english_texts(self):
        return self.repository.get_all()
