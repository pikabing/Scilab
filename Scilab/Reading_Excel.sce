// Reading an Excel file using Scilab
// Easier implementation
// this is not the complete code, you'll to make changes 
// to the name of variables and file name.
some_variable = readxls('filename.xls);
main_variable = some_variable(sheet_number_which_you_want_to_read)
var1 = main_variable.value
// gives a matrix of all the numerical values in the Excel file
// NaN is given for a non-numeric character
var2 = main_variable.text
// Gives the matrix of text in the Excel file
// This is the way to excess Excel file's text and data.
