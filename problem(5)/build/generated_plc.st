PROGRAM program0
  VAR
    staff1 : BOOL;
    staff2 : BOOL;
    bio1 : BOOL;
    bio2 : BOOL;
    bio3 : BOOL;
    HEAD : BOOL;
    DOOR_OPEN : BOOL;
  END_VAR

  DOOR_OPEN := HEAD OR (bio2 AND bio1 OR bio3 AND bio1 OR bio3 AND bio2) AND staff2 AND staff1;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program0;
  END_RESOURCE
END_CONFIGURATION
