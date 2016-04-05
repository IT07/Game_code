/*
	Author: IT07

	Description:
	generates authorization token.

	Params:
	none

	Returns:
	STRING - the token
*/

_chars = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
_charsCap = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
_token = format["EPOCH_vgsKey_%1", floor random 9001];
for '_t' from 0 to (7 + floor random 3) do
{
	_rndm = floor random 3;
	switch (_rndm) do
	{
		case 0:
		{
			// Add a number to token
			_token = _token + str(floor random 79);
		};
		case 1:
		{
			// Add a character to token
			_token = _token + (_chars select(floor random count _chars)) + (_charsCap select(floor random count _chars));
		};
		default
		{
			// Add a character to token
			_token = _token + (_chars select(floor random count _chars)) + (_charsCap select(floor random count _chars));
		};
	};
};
_token // Return the generated token
