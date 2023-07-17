from typing import List
from domain.models import EnglishText
from domain.repositories import EnglishTextRepository


class InMemoryEnglishTextRepository(EnglishTextRepository):
    def __init__(self):
        self.english_texts = []

    def save(self, english_text: EnglishText):
        self.english_texts.append(english_text)

    def get_all(self) -> List[EnglishText]:
        return self.english_texts
