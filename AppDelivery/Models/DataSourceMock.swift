import Foundation

let ordersMock: [OrderType] = [
  OrderType(id: 1, name: "Restaurantes", image: "hamburguer"),
  OrderType(id: 2, name: "Farmácia", image: "farmacia"),
  OrderType(id: 3, name: "Mercado", image: "mercado"),
  OrderType(id: 4, name: "Pet", image: "petshop"),
  OrderType(id: 5, name: "Descontos", image: "descontos"),
  OrderType(id: 6, name: "Bebidas", image: "bebidas"),
  OrderType(id: 7, name: "Gourmet", image: "gourmet"),
]

let storesMock: [StoreType] = [
  StoreType(
    id: 1, name: "Monstro Burguer",
    logoImage: "monstro-burger-logo",
    headerImage: "monstro-burger-header",
    location: "Jacareí, SP",
    stars: 4,
    products: [
      ProductType(id: 1, name: "Hamburger Classico",
                  description: "Hambúrguer gourmet com carne de boi angus",
        image: "classic_burger", price: 19.99
      ),
      ProductType(
        id: 2, name: "Hamburguer com Bacon",
        description:"Hambúrguer artesanal com picanha, queijo, bacon e molho especial",
        image: "bacon_burger", price: 14.99
      ),
      ProductType(
        id: 3, name: "Batatas Fritas",
        description: "Porção de batatas fritas crocantes",
        image: "fries", price: 24.99
      ),
      ProductType(
        id: 4, name: "Refrigerante",
        description: "Refrigerante lata de 355ml",
        image: "soda", price: 4.99
      ),
      ProductType(
        id: 5, name: "Sorvete de baunilha",
        description: "Copo de sorvete de baunilha",
        image: "vanilla_ice_cream", price: 9.99
      )
    ]),
  StoreType(
    id: 2,
    name: "Food Court",
    logoImage: "food-court-logo",
    headerImage: "food-court-header",
    location: "Centro Comercial",
    stars: 3,
    products: [
      ProductType(id: 1, name: "Hamburger Classico",
                  description: "Hambúrguer gourmet com carne de boi angus",
        image: "classic_burger", price: 19.99
      ),
      ProductType(
        id: 2, name: "Hamburguer com Bacon",
        description:"Hambúrguer artesanal com picanha, queijo, bacon e molho especial",
        image: "bacon_burger", price: 14.99
      ),
      ProductType(
        id: 3, name: "Batatas Fritas",
        description: "Porção de batatas fritas crocantes",
        image: "fries", price: 24.99
      ),
      ProductType(
        id: 4, name: "Refrigerante",
        description: "Refrigerante lata de 355ml",
        image: "soda", price: 4.99
      ),
      ProductType(
        id: 5, name: "Sorvete de baunilha",
        description: "Copo de sorvete de baunilha",
        image: "vanilla_ice_cream", price: 9.99
      )
    ]),
  StoreType(
    id: 3,
    name: "Carbron",
    logoImage: "carbron-logo",
    headerImage: "carbron-header",
    location: "Zona Sul",
    stars: 4,
    products: [
      ProductType(id: 1, name: "Hamburger Classico",
                  description: "Hambúrguer gourmet com carne de boi angus",
        image: "classic_burger", price: 19.99
      ),
      ProductType(
        id: 2, name: "Hamburguer com Bacon",
        description:"Hambúrguer artesanal com picanha, queijo, bacon e molho especial",
        image: "bacon_burger", price: 14.99
      ),
      ProductType(
        id: 3, name: "Batatas Fritas",
        description: "Porção de batatas fritas crocantes",
        image: "fries", price: 24.99
      ),
      ProductType(
        id: 4, name: "Refrigerante",
        description: "Refrigerante lata de 355ml",
        image: "soda", price: 4.99
      ),
      ProductType(
        id: 5, name: "Sorvete de baunilha",
        description: "Copo de sorvete de baunilha",
        image: "vanilla_ice_cream", price: 9.99
      )
    ]),
  StoreType(
    id: 4,
    name: "Padaria",
    logoImage: "bakery-logo",
    headerImage: "bakery-header",
    location: "Bairro dos Pães",
    stars: 5,
    products: [
      ProductType(id: 1, name: "Hamburger Classico",
                  description: "Hambúrguer gourmet com carne de boi angus",
        image: "classic_burger", price: 19.99
      ),
      ProductType(
        id: 2, name: "Hamburguer com Bacon",
        description:"Hambúrguer artesanal com picanha, queijo, bacon e molho especial",
        image: "bacon_burger", price: 14.99
      ),
      ProductType(
        id: 3, name: "Batatas Fritas",
        description: "Porção de batatas fritas crocantes",
        image: "fries", price: 24.99
      ),
      ProductType(
        id: 4, name: "Refrigerante",
        description: "Refrigerante lata de 355ml",
        image: "soda", price: 4.99
      ),
      ProductType(
        id: 5, name: "Sorvete de baunilha",
        description: "Copo de sorvete de baunilha",
        image: "vanilla_ice_cream", price: 9.99
      )
    ]),
  StoreType(
    id: 5,
    name: "Açai Panda",
    logoImage: "acai-panda-logo",
    headerImage: "acai-panda-header",
    location: "Praia",
    stars: 4,
    products: [
      ProductType(id: 1, name: "Hamburger Classico",
                  description: "Hambúrguer gourmet com carne de boi angus",
        image: "classic_burger", price: 19.99
      ),
      ProductType(
        id: 2, name: "Hamburguer com Bacon",
        description:"Hambúrguer artesanal com picanha, queijo, bacon e molho especial",
        image: "bacon_burger", price: 14.99
      ),
      ProductType(
        id: 3, name: "Batatas Fritas",
        description: "Porção de batatas fritas crocantes",
        image: "fries", price: 24.99
      ),
      ProductType(
        id: 4, name: "Refrigerante",
        description: "Refrigerante lata de 355ml",
        image: "soda", price: 4.99
      ),
      ProductType(
        id: 5, name: "Sorvete de baunilha",
        description: "Copo de sorvete de baunilha",
        image: "vanilla_ice_cream", price: 9.99
      )
    ]),
]
