from abc import ABC, abstractmethod
from typing import List
from domain.models import EnglishText


class EnglishTextRepository(ABC):
    @abstractmethod
    def save(self, english_text: EnglishText):
        pass

    @abstractmethod
    def get_all(self) -> List[EnglishText]:
        pass
