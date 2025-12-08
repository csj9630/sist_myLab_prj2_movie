package movie.detail;

import java.util.List;

public class DetailDTO {
	
	private String title, posterImg, bgImg, contentInfo, mediaLating, genre ;
	private int runTime;
	private List<String> videoLink,cutImg;

	@Override
	public String toString() {
		return "DetailDTO [title=" + title + ", posterImg=" + posterImg + ", bgImg=" + bgImg + ", contentInfo="
				+ contentInfo + ", mediaLating=" + mediaLating + ", genre=" + genre + ", runTime=" + runTime
				+ ", videoLink=" + videoLink + ", cutImg=" + cutImg + "]";
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getMediaLating() {
		return mediaLating;
	}

	public void setMediaLating(String mediaLating) {
		this.mediaLating = mediaLating;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public int getRunTime() {
		return runTime;
	}

	public void setRunTime(int runTime) {
		this.runTime = runTime;
	}

	public List<String> getVideoLink() {
		return videoLink;
	}

	public void setVideoLink(List<String> videoLink) {
		this.videoLink = videoLink;
	}

	public List<String> getCutImg() {
		return cutImg;
	}

	public void setCutImg(List<String> cutImg) {
		this.cutImg = cutImg;
	}



	public DetailDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}//class
