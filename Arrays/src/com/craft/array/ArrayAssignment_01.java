package com.craft.array;

public class ArrayAssignment_01 {

	public static void main(String[] args) {
		// matrix/ multidimensional array
		int[][] a = {{1, 2,3},
		             {4, 2, 1}};
		
       int[][] b = {{3, 2, 1},
    		   {2, 1, 5}};
	int [][] sum = new int [2][3];
 for(int i = 0; i < 2; i++ ) {
	 for(int j = 0; j <3 ; j++) {
		 sum[i][j] = a[i][j] + b[i][j];
		 //sum[0][0] = a[0][0] + b[0][0]
		 //sum[0][0] = 1 + 3
		 if(j == 0 && i > 0) {
			 //move to next line after first row addition is completed
			 System.out.println();
		 }
		 
		 System.out.print(sum[i][j] + " ");	 
		 
	 	}
 	}
	 
 }
}
