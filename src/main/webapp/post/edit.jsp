<%@ include file="/WEB-INF/header.jsp" %>
<%@ include file="/WEB-INF/navbar.jsp" %>
<%@page import="com.ghenesis.repository.PostRepository"%> 
<%@page import="com.ghenesis.model.Post"%> 
<%@page import="com.ghenesis.model.User"%> 
<%@page import="javax.servlet.http.HttpSession"%>
<style>
    .container-create-post:hover{
        transform:translateY(5px);
    }
        body {
            background-image: url('../public/backround.png');
            }

</style>
<br />
<br>
<br>

<div class="page-header clear-filter" filter-color="orange">
    <div class="page-header-image" data-parallax="true">
    </div>
    <div class="container container-create-post shadow p-5" style="transition:all ease 0.3s;background:#ddd;border-radius:10px">
        <c:if test="${not empty wrong_auth}">
            <div class="alert alert-danger" role="alert">
                ${wrong_auth}
            </div>
            <c:set var="wrong_auth" value="" scope="session"/>
        </c:if>
        <div class="d-flex justify-content-center" style="text-transform:uppercase">
            <h3>Edit Post</h3>
        </div>
        <form method="POST" action="update">
            <%
                User user = (User) session.getAttribute("user");
                Long post_id = Long.parseLong(request.getParameter("id"));
                PostRepository postRepository = new PostRepository();
                Post post = postRepository.getPost(post_id);                
                if (user.getId() != post.getUser().getId()) {
                    response.sendRedirect(request.getHeader("referer"));
                }
            %>
            <input type="hidden" name="id" value="<%=post.getId()%>"/>
            <div class="form-group">
                <label for="title">Title</label>
                <input value="<%=post.getTitle()%>" type="text" style="background-color: white" name="title" class="form-control" id="title" placeholder="Title" required>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea  placeholder="Description" class="form-control" id="description" type="text" name="description" style="background-color: white" height="auto" rows="7" required><%=post.getDescription()%></textarea>
            </div>
            <div>
                <a class="btn btn-secondary mr-2" href="/ghenesis/post/">Back</a>
                <button class="btn btn-primary" type="submit">
                    Edit Post
                </button>
            </div>
        </form>
    </div>
</div>
<%@ include file="/WEB-INF/footer.jsp" %>