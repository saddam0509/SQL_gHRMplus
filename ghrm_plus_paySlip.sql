select 
E.EmployeeCode ,
E.EmployeeName as EmployeeName ,
EDPT.DepartmentName,
ED.DesignationName,
PS.EffectiveStartDate ,
PS.EffectiveEndDate ,
PC.ComponentName ,
PS.ComponentAmount ,
PC.ComponentCategory

from PRSalaryConfiguration PS 
Inner Join PRComponent PC on PC.PRComponentID= PS.PRComponentID 
Inner Join Employee E on E.EmployeeID = PS.EmployeeID
Inner Join EmployeeDesignation ED on ED.DesignationId = E.DesignationId
Inner Join EmployeeDepartment EDPT on EDPT.DepartmentId = E.DepartmentId
where E.EmployeeCode='2670'