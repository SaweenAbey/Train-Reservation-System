document.getElementById('paymentForm').addEventListener('submit', function(event) {
            // Prevent form submission
            event.preventDefault();
            
            // Get all input fields
            const name = document.getElementById('name');
            const cardno = document.getElementById('cardno');
            const exp = document.getElementById('exp');
            const cvc = document.getElementById('cvc');
            const email = document.getElementById('email');
            
            // Get all error spans
            const nameError = document.getElementById('nameError');
            const cardnoError = document.getElementById('cardnoError');
            const expError = document.getElementById('expError');
            const cvcError = document.getElementById('cvcError');
            const emailError = document.getElementById('emailError');
            
            // Reset error messages
            nameError.textContent = '';
            cardnoError.textContent = '';
            expError.textContent = '';
            cvcError.textContent = '';
            emailError.textContent= '';
            
            let isValid = true;
            
            // Validate each field
            if (name.value.trim() === '') {
                nameError.textContent = 'Name is required';
                isValid = false;
            }
            
            if (cardno.value.trim() === '') {
                cardnoError.textContent = 'Card number is required';
                isValid = false;
            }
            
            if (exp.value.trim() === '') {
                expError.textContent = 'Expiry is required';
                isValid = false;
            }
            
            if (cvc.value.trim() === '') {
                cvcError.textContent = 'CVC is required';
                isValid = false;
            }
            
            if (email.value.trim() === '') {
                emailError.textContent= 'Email is required';
                isValid = false;
            }
            
            // If all fields are valid, submit the form
            if (isValid) {
				alert('Card saved successfully..!'); 
                this.submit();
            }
        });
		
		

document.getElementById('payBtn').addEventListener('click', function() {
		           
		            
		            // Get all input fields
		            const name = document.getElementById('name');
		            const cardno = document.getElementById('cardno');
		            const exp = document.getElementById('exp');
		            const cvc = document.getElementById('cvc');
		            const email = document.getElementById('email');
		            
		            // Get all error spans
		            const nameError = document.getElementById('nameError');
		            const cardnoError = document.getElementById('cardnoError');
		            const expError = document.getElementById('expError');
		            const cvcError = document.getElementById('cvcError');
		            const emailError = document.getElementById('emailError');
		            
		            // Reset error messages
		            nameError.textContent = '';
		            cardnoError.textContent = '';
		            expError.textContent = '';
		            cvcError.textContent = '';
		            emailError.textContent= '';
					
					let isValid = true;
		            
		            // Validate each field
		            if (name.value.trim() === '') {
		                nameError.textContent = 'Name is required';
		                isValid = false;
		            }
		            
		            if (cardno.value.trim() === '') {
		                cardnoError.textContent = 'Card number is required';
		                isValid = false;
		            }
		            
		            if (exp.value.trim() === '') {
		                expError.textContent = 'Expiry is required';
		                isValid = false;
		            }
		            
		            if (cvc.value.trim() === '') {
		                cvcError.textContent = 'CVC is required';
		                isValid = false;
		            }
		            
		            if (email.value.trim() === '') {
		                emailError.textContent= 'Email is required';
		                isValid = false;
		            }
					
					if (isValid) {
					    window.location.href = "PaymentTable.jsp"; 
					}
		           
			});
				