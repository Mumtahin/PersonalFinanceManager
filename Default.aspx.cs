using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    double rentCost,
        furnitureCost,
        homeMaintenanceCost,
        vehicleMaintenanceCost,
        transportCost,
        taxiCost,
        foodCost,
        fitnessCost,
        healthCost,
        communicationsCost,
        electricityCost,
        entertainmentCost,
        clothingCost;

    private double totalMonthlyCost, totalWeeklyCost, totalYearlyCost;

    string weeklyText;
    string monthlyText;
    string yearlyText;

    private double getValue(TextBox textBox)
    {
        double selectedValue;
        if (string.IsNullOrWhiteSpace(textBox.Text))
        {
            selectedValue = 0;
        }
        else
        {
            selectedValue = Convert.ToDouble(textBox.Text);
        }
        return selectedValue;
    }

    private void calcCosts()
    {
        rentCost = getValue(rentTextBox) * Convert.ToDouble(rentDropDownList.SelectedValue);
        furnitureCost = getValue(furnitureTextBox) * Convert.ToDouble(furnitureDropDownList.SelectedValue);
        homeMaintenanceCost = getValue(homeMaintenanceTextBox) * Convert.ToDouble(homeMaintenanceDropDownList.SelectedValue);
        vehicleMaintenanceCost = getValue(vehicleTextBox) * Convert.ToDouble(vehicleDropDownList.SelectedValue);
        transportCost = getValue(transportTextBox) * Convert.ToDouble(transportDropDownList.SelectedValue);
        taxiCost = getValue(taxiTextBox) * Convert.ToDouble(taxiDropDownList.SelectedValue);
        foodCost = getValue(foodDrinkTextBox) * Convert.ToDouble(foodDrinkDropDownList.SelectedValue);
        healthCost = getValue(healthTextbox);
        communicationsCost = getValue(CommunicationsTextBox);
        electricityCost = getValue(electricityTextBox);
        entertainmentCost = getValue(entertainmentTextBox) * Convert.ToDouble(entertainmentDropDownList.SelectedValue);
        clothingCost = getValue(clothingTextBox) * Convert.ToDouble(clothingDropDownList.SelectedValue);

        totalMonthlyCost = rentCost + furnitureCost 
                                + homeMaintenanceCost + vehicleMaintenanceCost 
                                + transportCost + taxiCost + foodCost 
                                + healthCost + communicationsCost + electricityCost 
                                + entertainmentCost + clothingCost;
        totalWeeklyCost = totalMonthlyCost / 4;
        totalYearlyCost = totalMonthlyCost * 12;
    }

    private String chartType()
    {
        return chartsDropDownList.SelectedValue;
    }

    private void LoadCanvasJS()
    {
        calcCosts();

        double totalHomeCost = rentCost + furnitureCost + homeMaintenanceCost;
        double totalTransportCost = transportCost + taxiCost;

        string func = "chart('" + totalHomeCost + "','" + vehicleMaintenanceCost + 
                        "','" + transportCost + "','" + taxiCost + "','" + foodCost + 
                        "','" + healthCost + "','" + communicationsCost + "','" + electricityCost + 
                        "','" + entertainmentCost + "','" + clothingCost + "','" + chartType() + "');";

        ClientScript.RegisterStartupScript(this.GetType(), "chart",
             func, true);
    }

    private void FormatText()
    {
        totalWeeklyTextLabel.Font.Size = 20;
        totalMonthlyTextLabel.Font.Size = 17;
        totalYearlyTextLabel.Font.Size = 17;
    }

    protected void CalcButton_Click(object sender, EventArgs e)
    {
        LoadCanvasJS();

        weeklyText = "Your weekly expenses amount to £" + totalWeeklyCost;
        monthlyText = "This equates to £" + totalMonthlyCost + " per month";
        yearlyText = "And £" + totalYearlyCost + " each year";

        FormatText();

        totalWeeklyTextLabel.Text = weeklyText;
        totalMonthlyTextLabel.Text = monthlyText;
        totalYearlyTextLabel.Text = yearlyText;
    }

    protected void chartsDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadCanvasJS();
    }
}