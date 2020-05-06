
// add button
$(document).ready(function() {
	$("#alertSuccess").hide;
	$("#alertError").hide;
});

$(document).on("click", "#btnAdd", function(event) {
	// clear status messages
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();
	
	// form validation
	var status = validateDoctorsForm();
	
	// if not valid
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}
	
	//if valid
	var doctor = getDoctorCard($("#name").val().trim(),
			$("#phone").val());
	
	$("#colDoctors").append(doctor);
	
	$("#alertSuccess").text("Saved successfully");
	$("#alertSuccess").show();
	
	$("#formDoctors")[0].reset();	
});

function validateDoctorsForm() {
	// name
	if ($("#name").val().trim() == "") {
		return "Insert doctor name";
	}
	
	// phone number
	if ($("#phone").val().trim() < 10 || $("#phone").val().trim() > 10) {
		return "Enter valid phone number";
	}
	
	else {
		return true;
	}
}

function getDoctorCard(name, phone) {
	
}

// delete button
$(document).on("click", ".remove", function(event) {
	$(this).closest(".doctor").remove();

	$("#alertSuccess").text("Removed successfully.");
	$("#alertSuccess").show();
});