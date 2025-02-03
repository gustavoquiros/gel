%{ 

%}

%% 

[ \t\n\r]+                                      { /* ignore */ }
(\-)?[0-9]+                                     { return INTEGER; }
(\-)?[0-9]+\.[0-9]+                             { return REAL; }
\"[^\"]*\"                                      { return STRING; }
\'[^\']*\'                                      { return STRING; }
[_a-zA-Z][_a-zA-Z0-9]*                          { return IDENTIFIER; }
[\~\!\@\#\$\%\^\&\*\-\+\=\|\:\;\<\>\,\.\/\?]+   { return OPERATOR; }
[\(\)\{\}\[\]]                                  { return yytext[0]; }

.                                               { perror("unexpected input"); }

%% 
