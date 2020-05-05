package com;

import com.sun.xml.internal.txw2.Document;

import model.Doctor;

@Path("/doctor")
public class DoctorResource {
	
	Doctor doc = new Doctor();
	
	// Read method
	@GET
	@Path("/{id}")
	@Produces(MediaType.TEXT_HTML)
	public String searchDoctor(@PathParam("id") int id) {
		return doc.read();
	}
	
	// Insert method
	@POST
	@Path("/")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_PLAIN)
	public String insertDoctor(@FormParam("id") int id,
			@FormParam("name") String name,
			@FormParam("email") String email,
			@FormParam("phone") int phone,
			@FormParam("specialization") String spec) {
		String output = doc.insert(name, email, phone, spec);
		return output;
	}
	
	// Update method
	@PUT
	@Path("/")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	public String updateDoctor(int did) {
		JsonObject obj = new JsonParser().parse(did).getJsonObject();
		
		int id = obj.get("id").getAsInteger();
		String name = obj.get("name").getAsString();
		String email = obj.get("email").getAsString();
		int phone = obj.get("phone").getAsInteger();
		String spec = obj.get("spec").getAsString();
		
		String output = doc.update(id, name, email, phone, spec);
		
		return output;
	}
	
	// Delete method
	@DELETE
	@Path("/")
	@Consumes(MediaType.APPLICATION_XML)
	@Produces(MediaType.TEXT_PLAIN)
	public String deleteDoctor(String did) {
		Document document = Jsoup.parse(did, "", Parser.xmLParser());
		
		String id = document.select("id").text();
		
		String output = doc.delete(did);
		
		return output;
	}
}
