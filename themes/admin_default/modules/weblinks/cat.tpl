<!-- BEGIN: main -->
<!-- BEGIN: data -->
<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr class="text-center">
			<td class="col-sm-2">{LANG.weight}</td>
			<td class="col-sm-14">{LANG.name}</td>
			<td class="col-sm-4">{LANG.inhome}</td>
			<td class="col-sm-4">{LANG.action}</td>
		</tr>
	</thead>
	<tbody>
		<!-- BEGIN: loop -->
		<tr>
			<td class="text-center">{ROW.weight_select}</td>
			<td><a href="{ROW.link_add}">{ROW.title}</a></td>
			<td class="text-center">{ROW.inhome_select}</td>
			<td class="text-center">
			<em class="fa fa-edit fa-lg">&nbsp;</em>
			<a href="{ROW.link_edit}">{LANG.edit}</a>
			<em class="fa fa-trash-o fa-lg">&nbsp;</em>
			<a href="javascript:void(0);" onclick="nv_del_cat({ROW.catid})">{LANG.delete}</a></td>
		</tr>
		<!-- END: loop -->
	</tbody>
</table>
<!-- END: data -->

<!-- BEGIN: error -->
<div class="alert alert-warning">{error}</div>
<!-- END: error -->
<div id="content">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title" style="float:left"><i class="fa fa-pencil"></i> {CAPTION}</h3>
			<div style="clear:both"></div>
		</div>
		<div class="panel-body">
			<form class="form-horizontal" action="{NV_BASE_ADMINURL}index.php" method="post">
				<input type="hidden" name ="{NV_NAME_VARIABLE}" value="{MODULE_NAME}" />
				<input type="hidden" name ="{NV_OP_VARIABLE}" value="{OP}" />
				<input type="hidden" name ="catid" value="{DATA.catid}" />
				<input type="hidden" name ="parentid_old" value="{DATA.parentid}" />
				<input name="savecat" type="hidden" value="1" />
				<div class="form-group">
					<label class="col-sm-4 control-label" for="input-title">{LANG.name}</label>
					<div class="col-sm-20">
						<input type="text" name="title" value="{DATA.title}" placeholder="{LANG.name}" id="input-title" class="form-control" maxlength="255" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label" for="input-alias">{LANG.alias}</label>
					<div class="col-sm-20">
						<input type="text" name="alias" value="{DATA.alias}" placeholder="{LANG.alias}" id="input-alias" class="form-control" maxlength="255" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label" for="input-alias">{LANG.cat_sub}</label>
					<div class="col-sm-20">
						<select class="form-control" name="parentid">
							<option value="0">{LANG.weblink_parent}</option>
							<!-- BEGIN: loopcat -->
							<option value="{CAT.catid}" {CAT.sl}>{CAT.xtitle}</option>
							<!-- END: loopcat -->
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label" for="input-alias">{LANG.weblink_fileimage}</label>
					<div class="col-sm-20">
						<input class="form-control fixinline" type="text" name="catimage" id="catimage" value="{DATA.catimage}"/>
						<input type="button" value="Browse server" name="selectimg" class="btn btn-info">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label" for="input-alias">{LANG.keywords}</label>
					<div class="col-sm-20">
						<input class="form-control" name="keywords" type="text" value="{DATA.keywords}" maxlength="255" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label" for="input-alias">{LANG.description}</label>
					<div class="col-sm-20">
						<textarea class="form-control" name="description" cols="100" rows="5">{DATA.description}</textarea>
					</div>
				</div>
				<div class="text-center">
					<input class="btn btn-primary" name="submit1" type="submit" value="{LANG.save}" />
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
//<![CDATA[
$("input[name=selectimg]").click(function() {
	var area = "catimage";
	var alt = "";
	var path = "{PATH}";
	var currentpath = "{UPLOAD_CURRENT}";
	var type = "image";
	nv_open_browse(script_name + "?" + nv_name_variable + "=upload&popup=1&area=" + area + "&alt=" + alt + "&path=" + path + "&type=" + type + "&currentpath=" + currentpath, "NVImg", 850, 420, "resizable=no,scrollbars=no,toolbar=no,location=no,status=no");
	return false;
});
//]]>
</script>
<!-- END: main -->