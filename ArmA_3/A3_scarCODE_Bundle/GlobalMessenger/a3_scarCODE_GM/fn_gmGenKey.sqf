/*
    Author: IT07

    Description:
    generates a key for Admins
*/

_chars = ['gm_a','gm_b','gm_c','gm_d','gm_e','gm_f','gm_g','gm_h','gm_i','gm_j','gm_k','gm_l','gm_m','gm_n','gm_o','gm_p','gm_q','gm_r','gm_s','gm_t','gm_u','gm_v','gm_w','gm_x','gm_y','gm_z'];
_charsCap = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
_token = str(floor random 77);
for '_t' from 0 to (6 + floor random 4) do
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
