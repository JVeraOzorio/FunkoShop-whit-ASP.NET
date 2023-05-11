using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelpersLibrary
{
    public static class StringHelper
    {
        public static bool IsNullOrEmpty(string str)
        {
            return string.IsNullOrEmpty(str);
        }

        public static string Capitalize(string str)
        {
            if (IsNullOrEmpty(str))
            {
                return str;
            }
            return char.ToUpper(str[0]) + str.Substring(1);
        }

        public static bool IsEmail(string str)
        {
            return str.Contains("@");
        }

        public static bool Equals (string str1, string str2)
        {
            return str1 == str2;
        }

        
    }
}
