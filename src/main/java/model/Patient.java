package model;

public class Patient {
    private int id;
    private String name;
    private int age;
    private String phone;
    private String gender; // phone should be String (better than long)

    // constructor(s)
    public Patient(int id, String name, int age, String phone, String gender) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.phone = phone;
        this.gender = gender;
        
    }
    public Patient(String name, int age,  String phone , String gender) {
        this.name = name;
        this.age = age;
        this.phone = phone;
        this.gender = gender;
        
    }

    // getters and setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public int getAge() { return age; }
    public void setAge(int age) { this.age = age; }

    public String getPhone() { return this.phone; }   // ✅ Must exist
    public void setPhone(String phone) { this.phone = phone; }
    
    public String getGender() { return gender; }
    public void setGender(String gender) { this.gender = gender; }

   
}
