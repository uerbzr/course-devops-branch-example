namespace workshop.calculator;

public class Calculator
{
    public int Add(int a, int b) => a + b;
    public int Add(IEnumerable<int> numbers) => numbers.Sum(x => x);
    public int Subtract(int a, int b) => a - b;
}
