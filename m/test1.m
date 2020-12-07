clear all;  clear classes;  %#ok<CLALL,CLCLS>

a = classA ();  % superiorto ('classB')
b = classB ();  % superiorto ('classC')
c = classC ();

assert (strcmp (f (a, b), 'classA'))  % A >> B
assert (strcmp (f (a, c), 'classA'))  % equal precendence
assert (strcmp (f (b, a), 'classA'))  % A >> B
assert (strcmp (f (b, c), 'classB'))  % B >> C
assert (strcmp (f (c, a), 'classC'))  % equal precendence
assert (strcmp (f (c, b), 'classB'))  % B >> C

% If we arrive here without error, it confirms that
disp ('Class precedence is not transitive !')
