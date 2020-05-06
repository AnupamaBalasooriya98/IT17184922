function onDoctorSaveComplete(response, status) {
	if (status == "success") {
			var resultSet = JSON.parse(response);
			
			if (resultSet.status.trim() == "success") {
				$("#alertSuccess").text("Successfully saved.");
				$("#alertSuccess").show();
				
				$("#divDoctorsGrid").html(resultSet.data);
			}
			else if (resultSet.status.trim() == "error") {
				$("#alertError").text("Error while saving");
				$("#alertError").show();
			}
	}
	else if (status == "error") {
		$("#alertError").text("Error while saving");
		$("#alertError").show();
	}
	else {
		$("#alertError").text("Unknown error while saving");
		$("#alertError").show();
	}
	
	$("#hidDoctorIDSave").val("");
	$("#formDoctor")[0].reset();
}

$(document).on("click", ".btnDelete", function(event) {
	$.ajax ( {
		url : "DoctorsAPI",
		type : "DELETE",
		data : "id=" + $(this).data("id"),
		dataType : "text",
		complete : function(response, status) {
			onDoctorDeleteComplete(response.responseTest, status);
		}
	});
});

function onDoctorDeleteComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			
			$("#divDoctorsGrid").html(resultSet.data);
		}
		else if (resultSet.status.trim() == "error") {
			$("#alertError").text("Error while saving");
			$("#alertError").show();
		}
	}
	else if (status == "error") {
		$("#alertError").text("Error while saving");
		$("#alertError").show();
	}
	else {
		$("#alertError").text("Unknown error while saving");
		$("#alertError").show();
	}
}