program unclip;

{$APPTYPE CONSOLE}


uses
  Clipbrd, SysUtils, Windows;

procedure WriteLnToConsoleUsingWriteFile(CP: Cardinal; AEncoding: TEncoding; const S: string);
var
  Buffer: TBytes;
  NumWritten: Cardinal;
begin
  Buffer := AEncoding.GetBytes(S);
  SetConsoleOutputCP(CP);
  WriteFile(GetStdHandle(STD_OUTPUT_HANDLE), Buffer[0], Length(Buffer), NumWritten, nil);
end;

const
  size = 16 * 1024;

var
  p: array [0 .. size] of Char;
  utf8: boolean;
begin
  try
    utf8 := (ParamCount > 0) and (LowerCase(ParamStr(1)) = 'utf8');
    if (ParamCount > 0) and (ParamStr(1) = '/?') then begin
      WriteLn('unclip 1.1, dea 2021');
      WriteLn('redirect clipboard to stout');
      WriteLn('Using:');
      WriteLn('  unclip /?');
      WriteLn('  unclip > file.txt');
      WriteLn('  unclip utf8 > file.txt');
      exit;
    end;

    Clipboard.GetTextBuf(p, size);

    if utf8 then
      WriteLnToConsoleUsingWriteFile(CP_UTF8, TEncoding.UTF8, p)
    else
      WriteLn(p);
  except
    on E: Exception do begin
      WriteLn(SysUtils.format('Error: %s', [E.Message]));
      ExitCode := 1;
    end;
  end

end.
