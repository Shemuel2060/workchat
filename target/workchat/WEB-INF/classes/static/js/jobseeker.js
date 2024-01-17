

// get details div 
let detailsDIV = document.querySelector(".user-details");

// create content for jobseeker/freelancer

let jobseekerDetails = `
				<form:form action="processRegistration" modelAttribute="user">
						<label for="skills">Skills:</label>
					    <form:input path="skills" />
					    <br/>
					
					    <label for="experience">Experience (years):</label>
					    <form:input path="experience" />
					    <br/>
					
					    <label for="resume">Upload Resume:</label>
					    <form:input type="file" path="resume" />
					    <br/>
					
					    <input type="submit" value="Submit" />
				</form:form>`;

// create content for employer

/* depending on user category choice, add content to div*/

detailsDIV.innerHTML = jobseekerDetails;

// 