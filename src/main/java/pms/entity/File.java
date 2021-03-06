package pms.entity;

public class File {
	private int file_id;// 文件id
	private int file_type; // 文件类型 1:作者信息页;2:论文全页;3:封面;4:封底(国内类型1、2、3、4，国外类型1、2)
	private String file_url;// 文件路径
	private int file_isValid;//文件是否有效(预留字段)
	private int paperproxy_id;//论文代理id
	private int paper_id;// 论文id

	public int getFile_id() {
		return file_id;
	}

	public void setFile_id(int file_id) {
		this.file_id = file_id;
	}

	public int getFile_type() {
		return file_type;
	}

	public void setFile_type(int file_type) {
		this.file_type = file_type;
	}

	public String getFile_url() {
		return file_url;
	}

	public void setFile_url(String file_url) {
		this.file_url = file_url;
	}

	public int getPaper_id() {
		return paper_id;
	}

	public void setPaper_id(int paper_id) {
		this.paper_id = paper_id;
	}

	public int getFile_isValid() {
		return file_isValid;
	}

	public void setFile_isValid(int file_isValid) {
		this.file_isValid = file_isValid;
	}

	public int getPaperproxy_id() {
		return paperproxy_id;
	}

	public void setPaperproxy_id(int paperproxy_id) {
		this.paperproxy_id = paperproxy_id;
	}

}
