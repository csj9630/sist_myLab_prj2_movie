package movie.trailer;

public class TrailerDTO {
	private String trailer_code,url_path,movie_code;

	public String getTrailer_code() {
		return trailer_code;
	}

	public void setTrailer_code(String trailer_code) {
		this.trailer_code = trailer_code;
	}

	public String getUrl_path() {
		return url_path;
	}

	public void setUrl_path(String url_path) {
		this.url_path = url_path;
	}

	public String getMovie_code() {
		return movie_code;
	}

	public void setMovie_code(String movie_code) {
		this.movie_code = movie_code;
	}

	@Override
	public String toString() {
		return "TrailerDTO [trailer_code=" + trailer_code + ", url_path=" + url_path + ", movie_code=" + movie_code
				+ "]";
	}

}
