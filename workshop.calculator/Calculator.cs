namespace workshop.calculator;

public class Calculator
{
    public int Add(int a, int b) => a < 100 ? a + b : 0;
    public int Add(IEnumerable<int> numbers) => numbers.Count() < 6 ? numbers.Sum(x => x) : 0;
    public int Subtract(int a, int b) => a - b;
   
}
