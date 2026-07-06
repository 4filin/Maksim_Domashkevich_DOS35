PI = 3.141592653589793

class Circle:
    def __init__(self, radius, color):
        self.radius = radius
        self.color = color

    def get_area(self):
        """Вычисляет площадь круга по формуле S = π * r^2"""
        return PI * (self.radius ** 2)

    def get_circumference(self):
        """Вычисляет длину окружности по формуле C = 2 * π * r"""
        return 2 * PI * self.radius



circle_red = Circle(5, "красный")
circle_green = Circle(12, "зеленый")
circle_white = Circle(50, "белый")

print(f"Круг ({circle_red.color}):")
print(f"- Площадь: {circle_red.get_area():.2f}")
print(f"- Длина окружности: {circle_red.get_circumference():.2f}\n")

print(f"Круг ({circle_green.color}):")
print(f"- Площадь: { circle_green.get_area():.2f}")
print(f"- Длина окружности: { circle_green.get_circumference():.2f}\n")

print(f"Круг ({circle_white.color}):")
print(f"- Площадь: {circle_white.get_area():.2f}")
print(f"- Длина окружности: {circle_white.get_circumference():.2f}\n")


