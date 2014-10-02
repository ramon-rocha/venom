using System;

namespace VenomTester
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			var parser = new Venom.CobraSyntax.CobraParser();
			Venom.CobraSyntax.ISyntaxNode root;
			root = parser.ParseTopLevel("../../../../../cobra/trunk/Samples/Notepad.cobra");
			System.Console.WriteLine(root.ToPrettyString());
			//root = parser.ParseTopLevel("../../../../../cobra/trunk/Samples/Shapes.cobra");
			//System.Console.WriteLine(root.ToPrettyString());
			//root = parser.ParseTopLevel("../../../../../cobra/trunk/Source/Misc/hello.cobra");
			//System.Console.WriteLine(root.ToPrettyString());
		}
	}
}
