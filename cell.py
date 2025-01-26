from graphics import Point, Line, Window

class Cell:
    def __init__(self, win:Window=None):
        self.has_left_wall = True
        self.has_right_wall = True
        self.has_top_wall = True
        self.has_bottom_wall = True
        self.visited = False
        self._x1 = None
        self._x2 = None
        self._y1 = None
        self._y2 = None
        self._win = win
        
    def draw(self, x1, y1, x2, y2):
        if self._win is None:
            return
        
        self._x1, self._x2 = x1, x2
        self._y1, self._y2 = y1, y2

        walls = [
            (self.has_left_wall, Point(x1, y1), Point(x1, y2)),
            (self.has_top_wall, Point(x1, y1), Point(x2, y1)),
            (self.has_right_wall, Point(x2, y1), Point(x2, y2)),
            (self.has_bottom_wall, Point(x1, y2), Point(x2, y2)),
        ]

        for has_wall, start, end in walls:
            color = "black" if has_wall else "white"
            line = Line(start, end)
            self._win.draw_line(line, color)
            
    def calc_center(self):
        return Point(self._x1 + (abs(self._x2 - self._x1) // 2), 
                    self._y1 + (abs(self._y2 - self._y1) // 2))
    
    def draw_move(self, to_cell, undo=False):
        line = Line(self.calc_center(), to_cell.calc_center())
        self._win.draw_line(line, "gray" if undo else "red")
        