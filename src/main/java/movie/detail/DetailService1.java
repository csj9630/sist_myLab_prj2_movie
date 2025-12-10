package movie.detail;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONObject;

public class DetailService1 {

	//------싱글톤 패턴------------------------
	private static DetailService1 ds;
	
	private DetailService1() {
	}//DetailService
	
	public static DetailService1 getInstance() {
		if(ds == null) {
			ds = new DetailService1();
		}//end if 
		return ds;
	}//getInstance
	//--------------------------싱글톤 패턴----
	
	public JSONObject setDataToJSON(DetailDTO dtDTO) {

        // DetailDTO를 JSONObject로 변환
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("title", dtDTO.getName());
        jsonObject.put("posterImg", dtDTO.getPosterImg());
        jsonObject.put("bgImg", dtDTO.getBgImg());
        jsonObject.put("contentInfo", dtDTO.getContentInfo());
        jsonObject.put("mediaLating", dtDTO.getMediaLating());
        jsonObject.put("genre", dtDTO.getGenre());
        jsonObject.put("runTime", dtDTO.getRunTime());
        jsonObject.put("videoLink", dtDTO.getVideoLink());
        jsonObject.put("cutImg", dtDTO.getCutImg());
        
        
        // 결과 출력
        System.out.println(jsonObject.toJSONString());

        return jsonObject;
	}// setVariableTest
	
	
	public DetailDTO getChainsawMan() {
		 // DetailDTO 객체 생성
        DetailDTO dtDTO = new DetailDTO();
        
        // setter 메서드를 사용하여 값 설정
        dtDTO.setTitle("극장판 체인소 맨: 레제편");
        dtDTO.setPosterImg("resources/images/movieImg/chain_poster.jpg");
        dtDTO.setBgImg("resources/images/movieImg/chain_bg.jpg");
//        dtDTO.setContentInfo("압도적 배틀 액션이 스크린에서 폭발한다!  데블 헌터로 일하는 소년 '덴지'는 조직의 배신으로 죽음에 내몰린 순간 전기톱 악마견 '포치타'와의 계약으로 하나로 합쳐져 누구도 막을 수 없는 존재 '체인소 맨'으로 다시 태어난다. 악마와 사냥꾼, 그리고 정체불명의 적들이 얽힌 잔혹한 전쟁 속에서 '레제'라는 이름의 미스터리한 소녀가 '덴지' 앞에 나타나는데… '덴지'는 사랑이라는 감정에 이끌려 지금껏 가장 위험한 배틀에 몸을 던진다!");
        dtDTO.setContentInfo("인기 애니메이션 '체인소 맨' 첫 극장판 국내 상륙!<br> 압도적 배틀 액션이 스크린에서 폭발한다!<br /> <br /> 데블 헌터로 일하는 소년 '덴지'는 조직의 배신으로 죽음에 내몰린 순간<br />전기톱 악마견 '포치타'와의 계약으로 하나로 합쳐져<br /> 누구도 막을 수 없는 존재 '체인소 맨'으로 다시 태어난다.<br /> <br /> 악마와 사냥꾼, 그리고 정체불명의 적들이 얽힌 잔혹한 전쟁 속에서<br /> '레제'라는 이름의 미스터리한 소녀가 '덴지' 앞에 나타나는데…<br /> '덴지'는 사랑이라는 감정에 이끌려 지금껏 가장 위험한 배틀에 몸을 던진다!<br />");
        dtDTO.setMediaLating("15세 이용가");
        dtDTO.setGenre("애니메이션, 액션, 어드벤처");
        dtDTO.setRunTime(100);
        
        List<String> videoLink  = new ArrayList<String>();
        String youtubeFront = "https://www.youtube.com/embed/";
        
        //비디오 링크 추가.
        videoLink.add("fRqegBxEvEc");
        videoLink.add("NBsQkBc_Jsc");
        videoLink.add("dOihGQCIw_w");
        dtDTO.setVideoLink(videoLink);
       
        //스틸컷 링크 추가
        List<String> cutImg = new ArrayList<>();
        cutImg.add("https://img.megabox.co.kr/SharedImg/2025/09/25/zMn6h4i7pFqQjJFdJ4jYJlLjKKaRNe0u_380.jpg");
        cutImg.add("https://img.megabox.co.kr/SharedImg/2025/10/24/fIJpT1BgMnoaQaAYbXF8Z9bKxjmWMZWQ_420.jpg");
        cutImg.add("https://img.megabox.co.kr/SharedImg/2025/08/28/TDE0lyTqa65EoXPD6ld2Aef7yJYCXBID_380.jpg");
        cutImg.add("https://img.megabox.co.kr/SharedImg/2025/08/28/5pe2UwG0I8mgagEPzymw62f6HQByrZJG_380.jpg");
        cutImg.add("https://img.megabox.co.kr/SharedImg/2025/09/25/L3c7bklLtc8nsuKlyE9s3S3e7vP2dfU4_380.jpg");
        cutImg.add("https://img.megabox.co.kr/SharedImg/2025/10/24/mvkc9OBNaDtdsLCgtboBlNU3SySYoch9_380.jpg");
        dtDTO.setCutImg(cutImg);
        
        return dtDTO;
	}//getChainsawMan
	
	public DetailDTO getEdgeOfTomorrow() {
	    // DetailDTO 객체 생성
	    DetailDTO dtDTO = new DetailDTO();

	    // setter 메서드를 사용하여 값 설정
	    dtDTO.setTitle("엣지 오브 투모로우");
	    
	    // 로컬 리소스 경로 (실제 파일명에 맞게 수정 필요)
	    dtDTO.setPosterImg("resources/images/edge_poster.jpg");
	    dtDTO.setBgImg("resources/images/edge_bg.jpg");

	    // 줄거리에 <br /> 태그를 포함하여 포맷팅
	    dtDTO.setContentInfo("가까운 미래, 강력한 외계 종족 '미믹'의 침략으로 인류는 멸망 위기를 맞는다. 빌 케이지(톰 크루즈)는 자살 작전이나 다름없는 전투에 투입되어 죽음을 맞이하지만,  눈을 떠보니 작전 수행 전날로 다시 깨어나게 된다.  반복되는 시간의 굴레(타임 루프)에 갇힌 그는 전쟁 영웅 리타 브라타스키(에밀리 블런트)를 만나 훈련을 거듭하며, 점점 더 강력한 전사로 거듭나게 되는데...  죽어야만 더 강해진다! 인류의 미래를 건 최후의 반격이 시작된다!");
		/*
		 * dtDTO.
		 * setContentInfo("가까운 미래, 강력한 외계 종족 '미믹'의 침략으로 인류는 멸망 위기를 맞는다.<br/> <br/> " +
		 * "빌 케이지(톰 크루즈)는 자살 작전이나 다름없는 전투에 투입되어 죽음을 맞이하지만,<br/> " +
		 * "눈을 떠보니 작전 수행 전날로 다시 깨어나게 된다.<br/> <br/> " +
		 * "반복되는 시간의 굴레(타임 루프)에 갇힌 그는<br/> " +
		 * "전쟁 영웅 리타 브라타스키(에밀리 블런트)를 만나 훈련을 거듭하며,<br/> " +
		 * "점점 더 강력한 전사로 거듭나게 되는데...<br/> <br/> " +
		 * "죽어야만 더 강해진다! 인류의 미래를 건 최후의 반격이 시작된다!<br/>");
		 */
	    dtDTO.setMediaLating("12세 이용가");
	    dtDTO.setGenre("액션, SF, 블록버스터");
	    dtDTO.setRunTime(113);

	    List<String> videoLink = new ArrayList<String>();
	    // 유튜브 임베드용 ID (실제 엣지 오브 투모로우 예고편 ID)
	    videoLink.add("DVkAC4b6SWQ"); // 공식 트레일러 1
	    videoLink.add("iBF53Ssbk5k"); // 공식 트레일러 2
	    videoLink.add("fLe_qO4AE-M"); // 파이널 예고편
	    dtDTO.setVideoLink(videoLink);

	    // 스틸컷 링크 추가 (예시 URL)
	    List<String> cutImg = new ArrayList<>();
	    cutImg.add("https://image.cine21.com/resize/cine21/still/2014/0109/41062_52ce5a54c30cb_movie_image%20(1)[H500].jpg");
	    cutImg.add("https://file2.nocutnews.co.kr/newsroom/image/2014/06/09/20140609100444557691.jpg");
	    cutImg.add("https://mblogthumb-phinf.pstatic.net/MjAyMjEwMDVfMjEx/MDAxNjY0OTM4ODQxNTY2.g9by5uyy3vRyrqRFjqsiP-WjEEARB4HOJYZibkI6RVgg.BCYADf3kXO3ved8bVg3srthTLI0ZBaCFNgdT5ALprVsg.JPEG.swallower04/edge_of_tomorrow_aphlamimic_texture_study_v001_003_sr_copy.jpg?type=w800");
	    cutImg.add("https://i.ytimg.com/vi/PQzrUNQLQGg/maxresdefault.jpg");
	    cutImg.add("https://i.ytimg.com/vi/Dnqqm1MRwsA/maxresdefault.jpg");
	    cutImg.add("https://t1.daumcdn.net/cfile/blog/236C9D355395877210");
	    dtDTO.setCutImg(cutImg);

	    return dtDTO;
	}//getEdgeOfTomorrow
	


}// class
