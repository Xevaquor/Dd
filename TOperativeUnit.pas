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

type TElemType = TOperative;
type PElemType = POperative;

type 
  PElem = ^TElem;
  TElem = record
    Val : TElemType;
    Next : PElem;
  end;

implementation

end.
