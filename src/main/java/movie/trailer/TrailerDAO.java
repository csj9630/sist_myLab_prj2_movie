package movie.trailer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import DBConnection.DbConn;
import movie.detail.DetailDTO;
import movie.image.ImageDTO;

public class TrailerDAO {
	// ------싱글톤 패턴------------------------
		private static TrailerDAO trDAO;

		private TrailerDAO() {
		}// DetailService

		public static TrailerDAO getInstance() {
			if (trDAO == null) {
				trDAO = new TrailerDAO();
			} // end if
			return trDAO;
		}// getInstance
	// --------------------------싱글톤 패턴----
		/**
		 * 영화 코드를 입력 받아서 해당되는 모든 트레일러를 DTOList로 리턴한다.
		 * 
		 * @param code : 영화코드
		 * @return
		 * @throws SQLException
		 */
		public List<ImageDTO> selectImage(String code) throws SQLException {
			List<ImageDTO> list = null;

			DbConn dbCon = DbConn.getInstance("jdbc/dbcp");

			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				// 1.JNDI 사용객체 생성
				// 2.DataSource 얻기
				// 3.DataSource에서 Connection 얻기
				con = dbCon.getConn();

				// 4.쿼리문 생성객체 얻기
				StringBuilder selectImage = new StringBuilder();

				selectImage
						.append("	select	")
						.append("	img_code, img_path, movie_code		")
						.append("	from movie_image	")
						.append("	where movie_code=?	");
				
				System.out.println("selectDetail : "+selectImage);

				pstmt = con.prepareStatement(selectImage.toString());
				// 5.바인드 변수 값 설정
				pstmt.setString(1, code);

				// 6.쿼리문 수행 후 결과 얻기
				rs = pstmt.executeQuery();
				
				TrailerDAO
				while (rs.next()) {
					dtDTO = new DetailDTO();
					dtDTO.setCode(rs.getString("movie_code"));
					dtDTO.setName(rs.getString("movie_name"));
					dtDTO.setGenre(rs.getString("movie_genre"));
					dtDTO.setRunningTime(rs.getInt("running_time"));
					dtDTO.setGrade(rs.getString("movie_grade"));
					dtDTO.setReleaseDate(rs.getDate("release_date"));
					dtDTO.setIntro(rs.getString("intro"));
					dtDTO.setMainImg(rs.getString("main_image"));
					dtDTO.setBgImg(rs.getString("bg_image"));
					dtDTO.setDailyAudience(rs.getInt("daily_audience"));
					dtDTO.setTotalAudience(rs.getInt("total_audience"));
					dtDTO.setDeleteFlag(rs.getString("movie_delete"));
					dtDTO.setShowingFlag(rs.getString("showing"));
				} // end while

			} finally {
				// 7.연결 끊기
				dbCon.dbClose(rs, pstmt, con);
			} // end finally

			return list;
		}// selectImage
	
	
}//class
