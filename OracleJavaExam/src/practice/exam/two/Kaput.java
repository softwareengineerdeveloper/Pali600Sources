package practice.exam.two;

public class Kaput {

	Kaput myK;
	String degree = "0";

	public static void main(String[] args) {
		Kaput k1 = new Kaput();
		go(k1);
		System.out.println(k1.degree);
	}

	static Kaput go(Kaput k) {
		final Kaput k1 = new Kaput();
		k.myK = k1;
		k.myK.degree = "7";
		//k.degree = "7";
		return k.myK;
	}
}

// 33.) A.	 0 
