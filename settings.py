class Settings:
    """класс для хранения всех настроек игры"""
    def __init__(self):
        """инициализирует настройки игры"""
        #параметры экрана
        self.screen_width = 1200
        self.screen_height = 800
        self.bg_color = (230, 230 ,230)

        #параметры снаряда
        self.bullet_speed = 2.0
        self.bullet_width = 3
        self.bullet_height = 15
        self.bullet_color = (255, 0, 0)
        self.bullet_allowed = 3

        #Настройки корабля
        self.ship_speed = 1.5