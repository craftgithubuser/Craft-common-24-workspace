package com.ass1;

import java.util.Scanner;

public class Studentgrade {

	private static final int Subject_A = 0;

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner Sc = new Scanner(System.in);
		
		System.out.println("Please enter your Name");
		String Name = Sc.next();
		
		System.out.println("Please enter your grade on Subject1");
		double Subject1 = Sc.nextInt();
		
		System.out.println("Please enter your grade on Subject2");
		double Subject2 = Sc.nextInt();
		
		System.out.println("Please enter your grade on Subject3");
		double Subject3 = Sc.nextInt();
		
        double Average = (Subject1  + Subject2 + Subject3)/3;
	
	System.out.println("Average Grade :" + " " + Average);
		
	}

}
