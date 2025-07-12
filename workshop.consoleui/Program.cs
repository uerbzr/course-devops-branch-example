// See https://aka.ms/new-console-template for more information

using workshop.calculator;

Console.WriteLine("Welcome to adder..");

var numbers = new List<int>();
Console.WriteLine("Enter numbers to add.. blank to finish");

while (true)
{
    Console.Write("Enter number: ");
    //string input = Console.ReadLine()?.Trim();
    string? input = Console.ReadLine();

    if (input is null) break;
    if(input==string.Empty) break;


    if (int.TryParse(input, out int number))
    {
        numbers.Add(number);
    }
    else
    {
        Console.WriteLine("Invalid input. Please enter a valid integer.");
    }
}

Calculator calculator = new Calculator();
Console.WriteLine($"Total: {calculator.Add(numbers)}");