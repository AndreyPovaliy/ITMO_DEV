#include <iostream>

class Point {
public:
    Point(int valX, int valY) : x(valX), y(valY)
    {}
    Point() : Point(0, 0)
    {}
    Point operator+ (Point& point) const {
        Point newPoint(Point::x + point.x,
            Point::y + point.y);
        return newPoint;
    }
    Point operator+ (int posX) const {
        Point newPoint(Point::x + posX,
            Point::y);
        return newPoint;
    }
    void operator+= (Point& point) {
        *this = *this + point;
    }
private:
    int x;
    int y;
};

int main() {
    Point pt1(1, 1), pt2(2, 2), pt3;
    pt3 = pt1 + pt2;
    pt2 += pt1;
    pt3 = pt1 + 5;
}