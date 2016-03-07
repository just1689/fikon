unit Fikon2U;

interface

  uses SysUtils;
  Procedure StartIt;
  Function Cnt(who : String) : Integer;
  Function Konvert(who : String) : String;

implementation
  Var Temp : String;
  Const Vo : Array[1..5] of Char = ('a', 'e', 'i', 'o', 'u');

Procedure StartIt;
begin
  Temp := '';
end;

Function Cnt(who : String) : Integer;
var lp, tp : Integer;
begin
  While who[1] = ' ' do
    Who := copy(who, 1, length(who) - 1);
  if Length(who) <> 0 then
    begin
      While (who[length(who) - 1] = ' ') Do
        who := copy(who, 1, length(who) - 1);
    end;

  tp := 0;
  For lp := 1 to Length(who) do
    begin
      if who[lp] = ' '
        then tp := tp + 1;
    end;
  Cnt := tp + 1;
end;

Function Extract(var ts : String) : String;
begin
  if Pos(' ', ts) = 0
    then begin
      Extract := ts;
      ts := '';
    end
    else begin
      Extract := Copy(ts, 1, Pos(' ', ts) - 1);
      Delete(ts, 1, Pos(' ', ts));
    end;

end;

Function Konvert(who : String) : String;
var ts, toOut : String;
begin
  ts := Extract(Who);
  toOut := '';
  While ts <> '' do
    begin
      If Uppercase(Copy(ts, 1, 2)) = 'FI' then
        begin
          if Temp <> ''
            then toOut := toOut + Temp + ' ';
          temp := ts;
          Delete(temp, 1, 2);
        end;
      If Uppercase(Copy(ts, Length(ts) - 2, 3)) = 'KON' then
        begin
            toOut := toOut + Copy(ts, 1, Length(ts) - 3) + temp + ' ';
            temp := '';
        end;
      ts := Extract(Who);
    end;
    If temp <> ''
      then begin
        toOut := toOut + Temp + ' ';
        Temp := '';
      end;
    Konvert := toOut;
end;

end.
