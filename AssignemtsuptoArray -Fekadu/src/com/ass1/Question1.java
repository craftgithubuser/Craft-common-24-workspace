package com.ass1;

public class Homework {

	private static final int[][] C = null;

	public static void main(String[] args) {
		int[][]A = {{1,1,1},{2,2,2}};
		int[][]B = {{5,5,5},{7,7,7}};
		int [][] C = new int [2][3];

		for (int x = 0; x<2;x++){
			for (int y=0;y<3; y++) {
	
				C[x][y] = A[x][y] + B[x][y];
		System.out.print(C[x][y] + " ");
		}
 System.out.println();
	}

}
}