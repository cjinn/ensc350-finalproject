Configuration FuncLUSim of TbLogicUnit is
	for behavioural
		for DUT : LogicUnit use entity work.LogicUnit(rtl); end for;
	end for;
End Configuration FuncLUSim;


Configuration TimeLUSim of TbLogicUnit is
	for behavioural
		for DUT : LogicUnit use entity work.LogicUnit(structure); end for;
	end for;
End Configuration TimeLUSim;


Configuration FuncAUSim of TbArithUnit is
	for behavioural
		for DUT : ArithUnit use entity work.ArithUnit(rtl); end for;
	end for;
End Configuration FuncAUSim;


Configuration TimeAUSim of TbArithUnit is
	for behavioural
		for DUT : ArithUnit use entity work.ArithUnit(structure); end for;
	end for;
End Configuration TimeAUSim;

