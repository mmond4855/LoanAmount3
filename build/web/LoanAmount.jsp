<%-- 
    Document   : LoanAmount
    Created on : Mar 15, 2019, 9:12:30 AM
    Author     : Mario D. Mondelice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loan Amount</title>
    </head>
    
    <body>
        <%
            double P = Double.parseDouble(request.getParameter("P"));
            double R = Double.parseDouble(request.getParameter("R"));
            double T = Double.parseDouble(request.getParameter("T"));
            double N = Double.parseDouble(request.getParameter("N"));
            double A = P * R / (N * (1 - Math.pow(1 + R / N, -1 * N * T)));
                
        %>
        
        <table>
            <tr>
                <td>Interest Rate</td>
                <td> <input type='text' name='R' value= <%= R %> > </td>
                
                <td>Amount of Time</td>
                <td> <input type='text' name='T' value= <%= T %> > </td>
            </tr>

            <tr>
                <td> Compound </td>
                <td> <input type='text' name='N' value=<%= N %> ></td>
                
                <td> Principal </td>
                <td> <input type='text' name='P' value=<%= P %> ></td>
            </tr>
            
            <tr>
                <td> Payment Amount </td>
                <td> <input type='text' name='A' value=<%= A %> ></td>
            </tr>
        </table>
        
    </body>
</html>

<%-- Ammorization Table

We want to take our payment amount and split it into the interest amount and the principal amount. 

Interest = P(R/ N) or (P) * (R) * (1/N) ---- Simple interest.;
Prinicpal Part = Amount - Interest;
Balance = Prinicpal - Principal Part;


|Payment #   | Amount    | Interest    |Principal Prt | Balance     |
---------------------------------------------------------------------
|      1     |           |             |              |             |
|      2     |           |             |              |             |
|      3     |           |             |              |             |
|      4     |           |             |              |             |
|      5     |           |             |              |             |
|      6     |           |             |              |             |
|      7     |           |             |              |             |
|      8     |           |             |              |             |
|      9     |           |             |              |             |
|     10     |           |             |              |             |
|            |           |             |              |             |
|            |           |             |              |             |
|            |           |             |              |             |
|            |           |             |              |             |
|            |           |             |              |             |
_______________________________________________________________________


--%> 