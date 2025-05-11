
		 function getready(){
			const sid = document.getElementById("location");
			const did = document.getElementById("destination");
			const tid = document.getElementById("noOfTicket");
			const rid = document.getElementById("routeId");
		}
        const qrCode = document.getElementById('qrCode');
        const qrData = sid+"to"+did+"and non of tickets "+tid+"route id: "+rid; 
        qrCode.src = `https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=${encodeURIComponent(qrData)}`;

    
