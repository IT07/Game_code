# A3_EPOCH_virtualGarage

#### What is this?
This script/menu gives any EPOCH player the ability to have a "cloud-storage" vehicle garage.<br />
The amount of garage slots can be changed by the admin that installs this script onto his/her server.<br />
All vehicles inside the garage are saved to the database (Redis) and are persistent IF inside the garage. <br />
Which means that when the player takes it out and does not put it back before the server restarts; it will be gone.<br />

#### Installation
**clientSide:** move the folder called `scarCODE` into the root of your mission file. Then open your description.ext and merge the content of the description.ext provided with this repository. Make sure you do not have `class cfgFunctions {` twice nor `tag="SC";` twice.<br />
**serverSide:** move the folder called `a3_epoch_virtualGarage` into your server's `@epochhive\addons` folder. When done with configuration, you can pack the contents of `a3_epoch_virtualGarage` into a pbo named exactly the same. <br />

#### Configuration
**clientSide:** open `config_VGS.hpp` located in `scarCODE\VGS` and edit its settings to your likings <br />
**serverSide:** open `config.cpp` located in `@epochhive\addons` and edit its setting to your likings <br />
<br />
*Want to help me out with making more stuff in the future? You can donate here: (PayPal) http://scarcode.com/donate/*
