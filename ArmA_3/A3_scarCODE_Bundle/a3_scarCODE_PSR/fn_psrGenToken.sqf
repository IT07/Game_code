/*
	Author: IT07

	Description:
	generates authorization token. Token is a little shorter than ussual, but it is more random though.

	Params:
	none

	Returns:
	TOKEN
*/

_chars = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
_charsCap = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
_token = str(floor random 77);
for '_t' from 0 to (4 + floor random 2) do
{
	_rndm = floor random 2;
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
		default {};
	};
};
_token // Return the generated token