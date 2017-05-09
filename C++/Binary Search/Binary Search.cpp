#include <iostream>
#include <math.h>
using namespace std;


// Declaration

void displayMenu();
int binarySearchRec (array[], int i1, int i2, int seacch);
int binarySearch (array[], int search);

int main() {
  displayMenu();

//Declaration of userchoice  
int userchoice = 0;
int search = 0;


//declaring array.
int array[20];
int incrmt = 4;
for(int x = 0;x <= 20;x++){
	array[x] = incrmt;
	if(incrmt%2 == 0){
		incrmt = incrmt + 3;
	}
	else{
		incrmt = incrmt + 1;
	}
}

  // loop until user choose the code of quit(2)
  while (userchoice != 2){
    
	//Clearing the screen.
	system("CLS");
	
    //Checking the functions of Calculater.
    displayMenu();
    cout <<" Enter the number of your choice..? ";
    cin >> userchoice;
    while (userchoice == 1) {
		system("CLS");

    cout << endl << " Here is the array of elements for you.. ^_^" << endl;
    
    //printing the array's elements.
    for (int i = 0; i <= array[].size;i++){
        cout << array(i) << "  ";
    }
    
    cout << endl << " ^_^ Which element's position you wanna find ";
    cin << search;

    Res = binarySearch(array[], search);

	if (Res <> -1){
		cout << endl << " Yes.. We find " << search << " in Position " << Res << " ^_^";
		int choice = 0;
		cout <<endl<<"Enter your choice.."<< endl;
		cout << " 1. Check Array" << endl;
		cout << " 2. Find another element" << endl;
		cout << " 3. Home" << endl;
		
		cout << "Here you go.."<< endl;
		cin >> choice;
		if (choice == 1){
			//printing the array's elements.
    		for (int i = 0; i <= array[].size;i++){
        		cout << "Pos : " << i << " --> " << array(i) << endl;
    		}
    		cout << endl << " Press 5 to go back to home.."<< endl;
    		cin >>userchoice;
		}
		else if(choice==2){
			userchoice == 1;
		}
		else if (choice == 3){
			userchoice = 5;
		}
		else{
			cout << endl << " Invalid Choice." << endl;
			userchoice = 5;
		}
	}

}
      
      else if (userchoice == 2) {
       cout << endl<<" Good Bye" <<endl;
      }
      
      else {
      cout << endl << " Invalid choice" <<endl;
      }
      
  cout << endl<< " Enter any number to continue...";

    }
  }
  
  
  void displayMenu(){
    cout << endl;
    cout << " Welcome To Binary Search ^_^" <<endl;
    cout << " ====================="<<endl<<endl;
    cout << " Make your choice" <<endl;
    cout << " ================" <<endl << endl;
    cout << "   1. Start >>" <<endl;
    cout << "   2. Quit  <<" <<endl << endl;
  }
  
  
  int binarySearch (array[], search){
  	return binarySearch = binarySearchRec(array[],0,20, search);
  }
  
  
  int binarySearchRec (array[], int i1, int i2, search){
  	int Res = -1;
   if (i1 > i2){
   		break;
   }
   
   int midPoint = 0;
	midPoint = i1 + (i2 - i1) \ 2;
	
   if (array(midPoint) = search){
      Res = midPoint;
  }
   else if (array(midPoint) < search){
      Res = binarySearchRec(array[], midPoint + 1, i2, search);
  }
   else{
      Res = binarySearchRec(array[], i1, midPoint - 1, search);
   binarySearchRec = Res;
	}
  }
  
  



