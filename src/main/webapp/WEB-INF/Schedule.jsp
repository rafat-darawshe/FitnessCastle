<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Schedule</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />

<style>
.logo {
	width: 130px;
	height: 100px;
	margin-top: -40px;
	margin-bottom: -20px;
}

.background {
	background-image: url("/images/gym3.avif");
}

.blur {
	background: rgba(255, 255, 255, 0.2);
	backdrop-filter: blur(5px);
	width: 100%;
	height: 100%;
}
</style>

</head>

<body>
	<div class="background">
		<div class="blur">
			<nav id="navbar" class="navbar navbar-expand-lg navbar-dark bg-dark">
				<div class="container-fluid">
					<a class="navbar-brand" href="#"> <img class="logo"
						src="/images/Logo.png" alt="">
					</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav">
							<li class="nav-item"><a style="color: teal;"
								class="nav-link active" href="">Home</a></li>
						</ul>
						<ul class="navbar-nav mb-2 mb-lg-0 ms-auto">
							<li class="my-2"><a href="/logout"
								class="btn btn-outline-light me-2">Logout</a></li>
							<li class="my-2"><a href=""
								class="btn btn-outline-light me-2">Profile</a></li>

						</ul>
					</div>
				</div>
			</nav>
			<main class="container-sm mt-5 p-5">
				<div class="row mb-5">
					<div class="col">
						<h3 class="text-white">Here's Your Schedule, Champ!</h3>
					</div>
					<div class="col text-end">
						<a href="/programs" class="btn btn-dark">Back to programs</a>
					</div>
				</div>
				<div class="row">
					<table class="table align-middle bg-white">
						<thead class="bg-light">
							<tr>
								<th>Day</th>
								<th>Description</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="d-flex align-items-center">
										<p class="fw-bold mb-1">Saturday</p>
									</div>
								</td>

								<td>
									<p class="fw-normal mb-1">
										<c:out value="${program.day1}" />
									</p>
								</td>
							</tr>
							<tr>
								<td>
									<div class="d-flex align-items-center">
										<p class="fw-bold mb-1">Sunday</p>
									</div>
								</td>

								<td>
									<p class="fw-normal mb-1">
										<c:out value="${program.day2}" />
									</p>
								</td>
							</tr>
							<tr>
								<td>
									<div class="d-flex align-items-center">
										<p class="fw-bold mb-1">Monday</p>
									</div>
								</td>

								<td>
									<p class="fw-normal mb-1">
										<c:out value="${program.day3}" />
									</p>
								</td>
							</tr>
							<tr>
								<td>
									<div class="d-flex align-items-center">
										<p class="fw-bold mb-1">Tuesday</p>
									</div>
								</td>

								<td>
									<p class="fw-normal mb-1">
										<c:out value="${program.day4}" />
									</p>
								</td>
							</tr>
							<tr>
								<td>
									<div class="d-flex align-items-center">
										<p class="fw-bold mb-1">Wednesday</p>
									</div>
								</td>

								<td>
									<p class="fw-normal mb-1">
										<c:out value="${program.day5}" />
									</p>
								</td>
							</tr>
							<tr>
								<td>
									<div class="d-flex align-items-center">
										<p class="fw-bold mb-1">Thursday</p>
									</div>
								</td>

								<td>
									<p class="fw-normal mb-1">
										<c:out value="${program.day6}" />
									</p>
								</td>
							</tr>
							<tr>
								<td>
									<div class="d-flex align-items-center">
										<p class="fw-bold mb-1">Friday</p>
									</div>
								</td>

								<td>
									<p class="fw-normal mb-1">
										<c:out value="${program.day7}" />
									</p>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row">
					<c:choose>
						<c:when test="${program.id == loggedUser.subscribedProgram.id}">
							<div class="col">
								<button class="btn btn-secondary float-end" disabled="disabled">
									Subscribed!</button>
							</div>
						</c:when>
						<c:otherwise>

							<div class="col text-end">
								<form action="/programs/${program.id}/subscribe" method="post">
									<input type="hidden" name="_method" value="put"> <input
										type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
									<button class="btn btn-dark float-end">Subscribe</button>
								</form>
							</div>
						</c:otherwise>
					</c:choose>

				</div>

			</main>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>

</html>