#include <iostream>

using namespace std;

bool p[1000001];

void primes() {
    for (int i = 0; i < 1000001; i++) {
        p[i] = true;
    }
    
    p[0] = p[1] = false;
    
    for (int i = 2; i < 1000001; i++) {
        if (p[i]) {
            for (int j = i * 2; j < 1000001; j += i) {
                p[j] = false;
            }
        }
    }
}

int main() {
    int n, x;
    primes();

    while (true) {
        cin >> n >> x;
        if (!n && !x) break;
        
        bool dp[1000001] = {false};
        int dishes[30];

        for (int i = 0; i < n; i++) {
            cin >> dishes[i];
            dp[dishes[i]] = true;
        }

        for (int i = 0; i < 1000001; i++) {
            for (int j = 0; j < n; j++) {
                if (i - dishes[j] >= 0 && dp[i - dishes[j]]) {
                    dp[i] = true;
                    break;
                }
            } 
        }

        int max = 0;
        for (int i = 0; i <= x; i++) {
            if (p[i] && dp[i]) max = i;
        }

        if (max) {
            cout << max << endl;
        } else {
            cout << "NA" << endl;
        }
        
    }

    return 0;
}
