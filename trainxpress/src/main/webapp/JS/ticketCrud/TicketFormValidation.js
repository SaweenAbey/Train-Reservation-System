document.getElementById('ticketForm').addEventListener('submit', function(event) {
            // Prevent form submission
            event.preventDefault();
            
            // Get all input fields
            const location = document.getElementById('location');
            const destination = document.getElementById('destination');
            const noOfTicket = document.getElementById('noOfTicket');
            const routeId = document.getElementById('routeId');
            const date = document.getElementById('date');
            
            // Get all error spans
            const locationError = document.getElementById('locationError');
            const destinationError = document.getElementById('destinationError');
            const noOfTicketError = document.getElementById('noOfTicketError');
            const routeIdError = document.getElementById('routeIdError');
            const dateError = document.getElementById('dateError');
            
            // Reset error messages
            locationError.textContent = '';
            destinationError.textContent = '';
            noOfTicketError.textContent = '';
            routeIdError.textContent = '';
            dateError.textContent= '';
            
            let isValid = true;
            
            // Validate each field
            if (location.value.trim() === '') {
                locationError.textContent = 'Location is required';
                isValid = false;
            }
            
            if (destination.value.trim() === '') {
                destinationError.textContent = 'Destination is required';
                isValid = false;
            }
            
            if (noOfTicket.value.trim() === '') {
                noOfTicketError.textContent = 'Number of passengers is required';
                isValid = false;
            }
            
            if (routeId.value.trim() === '') {
                routeIdError.textContent = 'Route ID is required';
                isValid = false;
            }
            
            if (date.value.trim() === '') {
                // Since there's no error span for date, we'll alert instead
                dateError.textContent= 'Date is required';
                isValid = false;
            }
            
            // If all fields are valid, submit the form
            if (isValid) {
                this.submit();
            }
        });