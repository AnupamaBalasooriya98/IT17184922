package com;

@Path("/doctor")
public class DoctorResource {
	@GET
	@Path("/")
	@Produces(MediaType.TEXT_PLAIN)
	public String doctor() {
		
	}
}
