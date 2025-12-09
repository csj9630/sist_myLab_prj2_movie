package movie.detail;

import java.sql.Date;

public class DetailDTO {
	// movie_code, movie_name, movie_genre, running_time, movie_grade, release_date,
	// intro,
	// poster_image,bg_image, daily_audience, total_audience, movie_delete, showing
	private String code, name, genre, grade, intro, posterImg, bgImg, contentInfo, deleteFlag, showingFlag;
	private int runningTime, dailyAudience, totalAudience;
	private Date releaseDate;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getPosterImg() {
		return posterImg;
	}

	public void setPosterImg(String posterImg) {
		this.posterImg = posterImg;
	}

	public String getBgImg() {
		return bgImg;
	}

	public void setBgImg(String bgImg) {
		this.bgImg = bgImg;
	}

	public String getContentInfo() {
		return contentInfo;
	}

	public void setContentInfo(String contentInfo) {
		this.contentInfo = contentInfo;
	}

	public String getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	public String getShowingFlag() {
		return showingFlag;
	}

	public void setShowingFlag(String showingFlag) {
		this.showingFlag = showingFlag;
	}

	public int getRunningTime() {
		return runningTime;
	}

	public void setRunningTime(int runningTime) {
		this.runningTime = runningTime;
	}

	public int getDailyAudience() {
		return dailyAudience;
	}

	public void setDailyAudience(int dailyAudience) {
		this.dailyAudience = dailyAudience;
	}

	public int getTotalAudience() {
		return totalAudience;
	}

	public void setTotalAudience(int totalAudience) {
		this.totalAudience = totalAudience;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	@Override
	public String toString() {
		return "DetailDTO [code=" + code + ", name=" + name + ", genre=" + genre + ", grade=" + grade + ", intro="
				+ intro + ", posterImg=" + posterImg + ", bgImg=" + bgImg + ", contentInfo=" + contentInfo
				+ ", deleteFlag=" + deleteFlag + ", showingFlag=" + showingFlag + ", runningTime=" + runningTime
				+ ", dailyAudience=" + dailyAudience + ", totalAudience=" + totalAudience + ", releaseDate="
				+ releaseDate + "]";
	}

	public DetailDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public DetailDTO(String code, String name, String genre, String grade, String intro, String posterImg, String bgImg,
			String contentInfo, String deleteFlag, String showingFlag, int runningTime, int dailyAudience,
			int totalAudience, Date releaseDate) {
		super();
		this.code = code;
		this.name = name;
		this.genre = genre;
		this.grade = grade;
		this.intro = intro;
		this.posterImg = posterImg;
		this.bgImg = bgImg;
		this.contentInfo = contentInfo;
		this.deleteFlag = deleteFlag;
		this.showingFlag = showingFlag;
		this.runningTime = runningTime;
		this.dailyAudience = dailyAudience;
		this.totalAudience = totalAudience;
		this.releaseDate = releaseDate;
	}

}// class
