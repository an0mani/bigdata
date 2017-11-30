package ym_ranking;

public class rankVO {
private String name;
private String latitude;
private String longtude;
private String area;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getLatitude() {
	return latitude;
}
public void setLatitude(String latitude) {
	this.latitude = latitude;
}
public String getLongtude() {
	return longtude;
}
public void setLongtude(String longtude) {
	this.longtude = longtude;
}
public String getArea() {
	return area;
}
public void setArea(String area) {
	this.area = area;
}
public rankVO(String name, String latitude, String longtude, String area) {
	this.name = name;
	this.latitude = latitude;
	this.longtude = longtude;
	this.area = area;
}

}
