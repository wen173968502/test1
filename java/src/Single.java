

//¿¡∫∫ Ω
public class Single {

	private Single() {
	}

	private static Single instance = null;

	public static Single getInstance() {

		if (instance == null) {
			synchronized (Single.class) {
				if (instance == null) {
					instance = new Single();
				}
			}
		}

		return instance;

	}
}
