function addmaterial(){
	materialname = $("#new_materialname").val();
	materialtype = $("#new_materialtype").val();
	materialprice = $("#new_materialprice").val();
	materialamount = $("#new_materialamount").val();
	$.get("/managercenter/add_material", {
		materialname : materialname,
		problem_id : materialtype,
		materialprice : materialprice,
		materialamount : materialamount
	}, function() {
		window.location.reload();
	});
}

function newmaterial() {
	$("#new_material").show("slide");
}

function deletematerial(id) {
	$.get("/managercenter/delete_material", {
		id : id
	}, function() {
		$("#"+id+"_tr").hide("slide");
	});
}

function edit(id) {
	$("#" + id + "_tr").hide();
	$("#" + id + "_show").show("slide");
}

function save(id) {
	materialname = $("#"+id+"_materialname").val();
	problem_id = $("#"+id+"_problem_id").val();
	materialprice = $("#"+id+"_materialprice").val();
	materialamount = $("#"+id+"_materialamount").val();
	materialtype = $("#"+problem_id+"_hidden_materialltype").val();
	$.get("/managercenter/save_material", {
		id : id,
		materialname : materialname,
		problem_id : problem_id,
		materialprice : materialprice,
		materialamount : materialamount
	}, function() {
		$("#" + id + "_materialname_td").text(materialname);
		$("#" + id + "_materialtype_td").text(materialtype);
		$("#" + id + "_materialprice_td").text(materialprice);
		$("#" + id + "_materialamount_td").text(materialamount);
		$("#" + id + "_show").hide();
		$("#" + id + "_tr").show("slide");
	});
}

function cancelsave(id) {
	$("#" + id + "_show").hide();
	$("#" + id + "_tr").show("slide");
}

function cancel() {
	$("#new_material").hide("slide");
}