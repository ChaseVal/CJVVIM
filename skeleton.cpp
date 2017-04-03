#include<iostream>
#include<string>
#include<sstream>

#include<fstream>

int main(int Narg, char **arg){
	using namespace std;
	for(int i=0; i<Narg; i++)
		cout << arg[i] << "\n";

	return 0;
}

