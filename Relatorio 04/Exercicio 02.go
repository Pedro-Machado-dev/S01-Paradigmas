package main

import "fmt"

func main() {
	var venda1, venda2, venda3 int

	fmt.Print("\nDigite as vendas do 1 trimestre: ")
	fmt.Scan(&venda1)

	fmt.Print("\nDigite as vendas do 2 trimestre: ")
	fmt.Scan(&venda2)

	fmt.Print("\nDigite as vendas do 3 trimestre: ")
	fmt.Scan(&venda3)

	soma := venda1 + venda2 + venda3

	fmt.Println("\nTotal de vendas:", soma, "unidades")

	switch {
	case soma >= 250:
		fmt.Println("Classificacao: Top Seller")
	case soma >= 180:
		fmt.Println("Classificacao: Senior")
	case soma >= 100:
		fmt.Println("Classificacao: Pleno")
	default:
		fmt.Println("Meta minima anual nao atingida!")
	}
}
