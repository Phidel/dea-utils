program unclip;

{$APPTYPE CONSOLE}


uses
  Clipbrd, SysUtils;

const
  size = 16 * 1024;

var
  p: array [0 .. size] of Char;

begin
  try
    WriteLn('unclip - dea 2021');
    if ParamCount > 0 then begin
      WriteLn('redirect clipboard to stout');
      exit;
    end;

    Clipboard.GetTextBuf(p, size);
    WriteLn(p);
  except
    on E: Exception do begin
      beep;
      WriteLn(SysUtils.format('Error: %s', [E.Message]));
      ExitCode := 1;
    end;
  end

end.
