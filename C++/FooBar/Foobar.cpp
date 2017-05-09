#include <iostream>
#include <math.h>
using namespace std;


// Declaration

void displayMenu();
int foobar(int n);

int main() {
  displayMenu();

//Declaration of userchoice  
int userchoice = 0;
int n; // Last integer.
int X; // Waiter.

  // loop until user choose the code of quit(2)
  while (userchoice != 2){
    
	//Clearing the screen.
	system("CLS");
	
    //Checking the functions of Calculater.
    displayMenu();
    cout <<" Enter the number of your choice..? ";
    cin >> userchoice;
    if (userchoice == 1) {
		system("CLS");
    	cout << endl <<endl<< " Enter the last integer of foobar seris..? ";
    	cin >> n;
    	foobar(n);
      }
      
      else if (userchoice == 2) {
       cout << endl<<" Good Bye" <<endl;
      }
      
      else {
      cout << endl << " Invalid choice" <<endl;
      }
      
  cout << endl<< " Enter any number to continue...";
  cin >> X; // Waiter.
    }
  }
  
  
  void displayMenu(){
    cout << endl;
    cout << " Welcome To Foobar ^_^" <<endl;
    cout << " ====================="<<endl<<endl;
    cout << " Make your choice" <<endl;
    cout << " ================" <<endl << endl;
    cout << "   1. Start >>" <<endl;
    cout << "   2. Quit  <<" <<endl << endl;
  }
  
  
  int foobar (int n){
	int looper = 1;
	cout << endl << endl; //Leaving line space before sentence.
  do{
  	if (looper%3 == 0 && looper%5 == 0){
  		cout << " Foobar ";
	  }
	else if (looper%3 == 0){
		cout << " Foo ";
	}
	else if (looper%5 == 0){
		cout << " Bar ";
	}
	else{
		cout << " " << looper << " ";
	}
	
	looper = looper + 1;
	}while (looper <= n);
	
	cout << endl << endl; //Leaving line space after sentence.
  }
  
  



