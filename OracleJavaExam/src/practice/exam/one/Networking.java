package practice.exam.one;

import java.util.LinkedList;
import java.util.List;

public class Networking {

	public static void main(String[] args) {
		List<Integer> i = new LinkedList<Integer>();
		i.add(4);
		i.add(2);
		i.add(5);
		int r = 1;
		doStuff(r);
		System.out.println(i.get(r));

		//38.) A.) 2

	}

	static int doStuff(int x) {
		return ++x;
	}

}
