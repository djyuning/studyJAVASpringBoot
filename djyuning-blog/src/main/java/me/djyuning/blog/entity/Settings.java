package me.djyuning.blog.entity;

public class Settings {
  // 键
  private String name;
  // 值
  private String value;
  // 类别
  private long type;


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getValue() {
    return value;
  }

  public void setValue(String value) {
    this.value = value;
  }


  public long getType() {
    return type;
  }

  public void setType(long type) {
    this.type = type;
  }

}
