
namespace CampoMinado
{
    class Program
    {
        //entrada padrão
        static void Main(string[] args)
        {
            //Definição de Variáveis
            int linha = 0;
            int coluna = 0;
            int l = 0;
            int c = 0;
            int score = 0;
            string iniciar, leia;
            // atribuir valor vazio a string
                iniciar = String.Empty;
                leia = String.Empty;    

            //Definição de valores para funcionamento das variáveis

            //CORRIGIR MATRIZ
            //Matriz de inteiros
            int[,] tab1 = new int[5, 5];
            string [,] tab2 = new string [5, 5];

            //Definição da posição das bombas
            // abaixamos um valor das posições pq no C# conta o 0 como posição.
            tab1[0, 0] = 1;
            tab1[0, 3] = 1;
            tab1[1, 4] = 1;
            tab1[2, 1] = 1;
            tab1[2, 4] = 1;
            tab1[3, 3] = 1;
            tab1[4, 2] = 1;

            Console.WriteLine("Boas vindas ao Campo Minado! Pronto para explodir?");
            Console.WriteLine("Digite tecla enter para continuar.");
            iniciar = Console.ReadLine();

            {
                for (l = 0; l < 5; l++)
                {
                    for (c = 0; c < 5; c++)
                        tab2[l, c] = " - * - ";
       
                }
            }
            do
            {
                Console.WriteLine("\r\n Escolha uma linha de 1 a 5");
                leia = Console.ReadLine();
                linha = Convert.ToInt16(leia);

                Console.WriteLine("\r\n Escolha uma coluna de 1 a 5");
                leia = Console.ReadLine();
                coluna = Convert.ToInt16(leia);

                if (tab1[linha, coluna] == 1)
                {
                    Console.WriteLine("\r\n Você encontrou uma bomba e perdeu! Tente novamente.");
                    tab2[linha, coluna] = " - 1 - ";
                }

                else
                {
                    Console.WriteLine("\r\n Você achou um espaço livre! Continue assim.");
                    score = score + 1;
                    tab2[linha, coluna] = " - 0 - ";

                }

                {
                    for ( l = 0; l < 5; l++)
                    {
                        for (c = 0; c < 5; c++)
                            Console.WriteLine(tab2[l, c]);
                    }
                }

                if (score == 18)
                {
                    Console.WriteLine("Uhul! Você venceu.");
                }
            } while ((tab1[linha, coluna] == 1) || (score == 18));
        }
    }
}
