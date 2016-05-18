#include <iostream>

using namespace std;

int f(int x) {
    return x * x;
}

int main() {
    int d;

    while (cin >> d) {
        int s = 0;
        for (int i = 0; i < 600 / d; i++) {
            int x = i * d;
            s += f(x) * d;
        }

        cout << s << endl;
    }

    return 0;
}
