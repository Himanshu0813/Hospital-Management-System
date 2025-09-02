package model;


import java.util.Date;

public class Appointment {
    private int id;
    private int doctorId;
   
	private int patientId;
    private Date appointmentDate;
    private String description;

    public Appointment() {}
    public Appointment(int id, int doctorId, int patientId, Date appointmentDate ,  String description) {
        this.id = id; this.doctorId = doctorId; this.patientId = patientId;
        this.appointmentDate = appointmentDate;
        this.description = description;
    }
    

    public Appointment(int doctorId, int patientId, Date appointmentDate, String description) {
		super();
		this.doctorId = doctorId;
		this.patientId = patientId;
		this.appointmentDate = appointmentDate;
		this.description = description;
	}
	
	public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public int getDoctorId() { return doctorId; }
    public void setDoctorId(int doctorId) { this.doctorId = doctorId; }
    public int getPatientId() { return patientId; }
    public void setPatientId(int patientId) { this.patientId = patientId; }
    public Date getAppointmentDate() { return appointmentDate; }
    public void setAppointmentDate(Date appointmentDate) { this.appointmentDate = appointmentDate; }
    public String getDescription() {return description; }
	public void setDescription(String description) {  this.description = description; }
}
