import pygame

class Ship:
    """класс управления кораблем"""

    def __init__(self, ai_game):
        """инициалирует корабль и запдает его начальную позицию"""
        self.screen = ai_game.screen
        self.screen_rect = ai_game.screen.get_rect()

        # загружает изобр корабля и получает прямоугольник
        self.image = pygame.image.load('images/ship.bmp')
        self.rect = self.image.get_rect()

        # каждый новый корабль появляется у нижнего края
        self.rect.midbottom = self.screen_rect.midbottom

        #флаг пере мещения, начинаем с неподвижного
        self.moving_right = False
        self.moving_left = False

    def update(self):
        """обновляет позицию корабля с учетом флага"""
        if self.moving_right:
            self.rect.x += 1
        if self.moving_left:
            self.rect.x -= 1

    def blitme(self):
        """рисует корабль в текущей позиции"""
        self.screen.blit(self.image, self.rect)