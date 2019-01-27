/**
 * Read a sheet and send an email to the current user containing the 10 least recently contacted names. 
 * To begin....
 * -- In a browser, open script.google.com. Login if not already and select New > Script.
 * -- Copy this entire 
 * -- Open this sheet and select File > Make a Copy. This copies it to your own Google Drive.
 * 
 * -- Open your sheet, copy the URL.
 * -- Replace "SHEET_ID" below here with your Spreadsheet ID from URL. For example...
 *    https://docs.google.com/spreadsheets/d/<THIS PART>/edit#gid=1301758036
 * -- Set COUNT to the number of recent names you'd like to see in each update
 * -- Configure trigger to desired frequency
 * Evan Crane - January 2019
*/


var SHEET_ID = "12aTrJ9VIXcg1LgiZ9tsG8lY2ub5ooH_2U34KiEJabhM";
var COUNT = 5;


function createAndSendList() {
  
  // Spreadsheet constructor, return type Spreadsheet
  var ss = SpreadsheetApp.openById(SHEET_ID);
    Logger.log(ss.getName());

  // Read in the body of the sheet
  var named_ranges = ss.getNamedRanges();
  
  var data = ss.getDataRange();
  Logger.log(date);
  
  // Sort the data by date
  var sorted = ss.sort(2);

  // Extract top N sorted items, see var size
  var top_sorted = sorted.getRange(2, 1, COUNT);
  
  // Get the email address of the active user - that's you.
  var email = Session.getActiveUser().getEmail();

  // Set email subject line with doc name and date in format MM/DD.
  var dateraw = new Date();
  var date = (dateraw.getMonth() + 1) + "/" + (dateraw.getDate());
  var subject = ss.getName() + " Week Of: " + date;
  
  // Append a new string to the "url" variable to use as an email body.
  var body = "Top "+COUNT+" sorted output: \n" + top_sorted.getValues();
 
  // Send yourself an email with a sorted list.
  GmailApp.sendEmail(email, subject, body);
}
