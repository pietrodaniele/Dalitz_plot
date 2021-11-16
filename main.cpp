#include <iostream>
#include <ctime>
#include <climits>
#include <cstdlib> 
#include <iomanip>
#include <fstream>
#include <cmath>
#include "random.h"
#include "funzioni.h"
using namespace std;

// operators
Random rnd;

int main(){
	createrandom(rnd);
    cout << rnd.Rannyu() << endl;
return 0;
}

