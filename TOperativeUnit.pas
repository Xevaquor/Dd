unit TOperativeUnit;

interface

type
	POperative = ^TOperative;
	TOperative = record
		FirstName : ShortString;
		LastName : ShortString;
		DateOfBirth : TDateTime;
		BirthPlace : ShortString;
		ImagePath : ShortString;
	end;

implementation

end.
