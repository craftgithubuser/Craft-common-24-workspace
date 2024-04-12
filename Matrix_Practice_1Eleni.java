package com.arrays;

import java.util.Scanner;

public class Matrix_Practice_1 {

	private static final int Total = 0;

	public static void main(String[] args) {
		
		
		//Print Subject
		
		String Subject[] = {"Math","Reading","Sciense"};
		for(int i = 0; i < Subject.length; i++)
			System.out.println("Subject:" + Subject[i]);
		
		//Print Mark Score
		
		int Score[] = {85, 90, 78};
		for(int j = 0; j < Score.length; j++)
			System.out.println("Score:" + Score[j]);
		
		//Print Average Score
		
		double sum = 0;
		for(int number : Score) {
			sum = sum + number;
	}
		
	System.out.println("Total Score:" + sum);
	
	//Average Score
	
	double average = sum/Score.length;
	
	System.out.println("Average:" + average);
	
	
	}

}
