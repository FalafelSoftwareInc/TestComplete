function readCSV(){
  
  DDT.CSVDriver("c:\\data\\orders.csv");
  while (!DDT.CurrentDriver.EOF()){
    Log.Message(DDT.CurrentDriver.Value("Customer")); 
    var cell = Sys.Process("DataGridViewSample").WinFormsObject("Form1").WinFormsObject("dataGridView1").UIAObject("Row_0").UIAObject("Customer_Name_Row_0"); 
    if (cell.Value != DDT.CurrentDriver.Value("Customer")){
      Log.Warning("CSV was: " + DDT.CurrentDriver.Value("Customer") + " and cell was: " + cell.Value); 
    }  
    DDT.CurrentDriver.Next();     
  } 
  
  
}