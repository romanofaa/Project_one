from curses.textpad import rectangle

import  pygame
from pygame.sprite import Sprite

class Alien(Sprite):
    """класс представляющий одного пришельца"""

    def __init__(self, ai_game):
        """инициализирует пришельца и задает его начальную позицию"""
        super().__init__()
        self.screen = ai_game.screen

        # загрузка изображения пришельца и назначение атрибута rect
        self.image = pygame.image.load('images/alien.bmp')
        self.rect = self.image.get_rect()

        # кажд нов пришелец появляется в верхнем левом углу экрана
        self.rect.x = self.rect.width
        self.rect.y = self.rect.height

        # Сохранение точной горизонтальной позиции пришельца
        self.x = float(self.rect.x)