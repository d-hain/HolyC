U8 num, *guess;
U8 min = 1, max = 100;

num = min + RandU16 % max;

Print("Welcome to the holy number guessing game!\n");
Print("Guess the number between %d and %d: ", min, max);

while(1){
	guess = GetStr("Number: ");

	if(Str2I64(guess) == num){
		Print("Thats right!\nWe are HOLY\n");
		break;
	}

	if(Str2I64(guess) < num)
		Print("Your guess was not holy! :'(\n");
	if(Str2I64(guess) > num)
		Print("Your guess was too holy! :(\n");
}