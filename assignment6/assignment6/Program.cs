using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace assignment6
{

    struct books
    {
        public int book_id;
        public string author;
        public float price;
        enum book_type
        {
            magazine,
            novel,
            referencebook,
            miscellaneous
        }

        class Program
        {
            public static void Main(string[] args)
            {
                books book1;
                books book2;
                /*details of book 1*/
                book1.book_id = 1002;
                book1.author = "chetanbhagat";
                book1.price = 260;
                
                Console.WriteLine("book details");
                Console.WriteLine("book id" + book1.book_id);
                Console.WriteLine("book author" + book1.author);
                Console.WriteLine("book price" + book1.price);
                Console.WriteLine("book type" + book_type.magazine);
                Console.ReadLine();
            }
        }
    }
}
