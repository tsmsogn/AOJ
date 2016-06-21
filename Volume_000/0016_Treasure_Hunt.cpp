#include <iostream>
#include <math.h>
#include <cstdio>

using namespace std;

int main() {
    double x, y, current_angle;
    int step, angle;
    x = 0, y = 0, current_angle = 90;

    while (true) {
        scanf("%d,%d", &step, &angle);

        if (!step && !angle) {
            break;
        }

        x += step * cos(current_angle * M_PI / 180);
        y += step * sin(current_angle * M_PI / 180);
        current_angle -= angle;
    }

    printf("%d\n%d\n", (int)x, (int)y);

    return 0;
}
