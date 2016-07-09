<%@ page language="java" %>

	<footer class="main-footer">
	    <div class="pull-right hidden-xs">
	      <b>Version</b> 1.0.0
	    </div>
	    <strong>Copyright &copy; 2016</strong> Thomas Matheus.
  </footer>
</div>
<script src="<c:url value='/static/plugins/jQuery/jQuery-2.1.4.min.js' /> "></script>
<script src="<c:url value='/static/bootstrap/js/bootstrap.min.js' />"></script>
<script src="<c:url value='/static/plugins/slimScroll/jquery.slimscroll.min.js' />"></script>
<script src="<c:url value='/static/plugins/fastclick/fastclick.min.js' />"></script>
<script src="<c:url value='/static/js/app.min.js' />"></script>
<script src="<c:url value='/static/js/demo.js' />"></script>
<script src="<c:url value='/static/plugins/datatables/jquery.dataTables.min.js' />"></script>
<script src="<c:url value='/static/plugins/datatables/dataTables.bootstrap.min.js' />"></script>
<script>
$(function () {
    $('#table-list').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": true,
        "ordering": false,
        "info": false,
        "autoWidth": true
    });
});
</script>
</body>
</html>