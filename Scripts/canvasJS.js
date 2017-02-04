var chart = function (home, vehicleMaintenanceCost, transportCost, taxiCost, foodCost, healthCost, communicationsCost, electricityCost, entertainmentCost, clothingCost, chartType) {

    document.getElementById('results').style.display = 'block';

	var chart = new CanvasJS.Chart("chartContainer", {
		theme: "theme1",//theme2
        backgroundColor: null,
		title:{
			text: "Breakdown of your Expenses"              
		},
		animationEnabled: true,   // change to true
		data: [              
		{
			// Change type to "bar", "area", "spline", "chartType",etc.
			type: chartType,
			dataPoints: [
				{ label: "Home",  y: home },
				{ label: "Vehicle", y:   vehicleMaintenanceCost},
				{ label: "Public Transport", y: transportCost  },
				{ label: "Taxi",  y: taxiCost  },
                { label: "Food",  y: foodCost  },
				{ label: "Health",  y: healthCost  },
                { label: "Communications",  y: communicationsCost  },
                { label: "Electricity",  y: electricityCost  },
                { label: "Entertainment",  y: entertainmentCost  },
                { label: "Garments",  y: clothingCost  }
			]
		}
		]
	});
	chart.render();
}
