double a, b, c;

double out_sum, out_product, out_division;

if(args.Length != 3) {
    Console.WriteLine("Wong number of input values provided\nExpected values: number number number");
    return;
}

if( !Double.TryParse(args[0], out a) || !Double.TryParse(args[1], out b) || !Double.TryParse(args[2], out c) ) {
    Console.WriteLine("Wrong input, only numbers expected");
    return;
}

if(c == 0) {
    Console.WriteLine("Third argument can't be zero");
    return;
}

out_sum = a + b + c;
out_product = a * b * c;
out_division = (a + b) / c;

Console.WriteLine(out_sum);
Console.WriteLine(out_product);
Console.WriteLine(out_division);