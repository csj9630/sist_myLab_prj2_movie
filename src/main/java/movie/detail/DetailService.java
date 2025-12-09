package movie.detail;

public class DetailService {
	//------싱글톤 패턴------------------------
	private static DetailService ds;
	
	private DetailService() {
	}//DetailService
	
	public static DetailService getInstance() {
		if(ds == null) {
			ds = new DetailService();
		}//end if 
		return ds;
	}//getInstance
	//--------------------------싱글톤 패턴----
}
