unit FikonU;

interface

  uses SysUtils;
  Function Cnt(who : String) : Integer;
  Function Convert(who : String) : String;

implementation

  Const Vo : Array[1..5] of Char = ('a', 'e', 'i', 'o', 'u');

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

Function Convert(who : String) : String;
var ts, Prod : String;
  words, fn, lp : Integer;
  Found : Boolean;
begin
  Who := who;
  Prod := '';
  For Words := 1 to Cnt(who) do
    begin
      ts := Extract(who);
      Fn := 1;
      Found := False;
      While (fn <= Length(ts)) AND (Found = false) do
        begin
          For lp := 1 to 5 do
            begin
              if LowerCase(ts[Fn]) = Vo[lp]
                then Found := true;
            end;
          Inc(Fn);
        end;
      Dec(Fn);
      If Found = true
        then begin
          If Length(ts) <> 1
            then begin
              If Copy(ts, Fn + 1, Length(ts) - Fn) <> ''
                then ts := 'Fi' + Copy(ts, Fn + 1, Length(ts) - Fn) + ' ' + Copy(ts, 1, Fn) + 'kon'
                else ts := Copy(ts, 1, Fn) + 'kon'
            end
            else ts := 'Fi' + ts;
        end
        else ts := ts + 'kon';
      Prod := Prod + ts + ' ';
    end;
  Convert := Prod;
end;

end.
