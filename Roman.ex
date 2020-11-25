defmodule Roman do
  def romanM(x)do
    case x do
      1 ->"M"
      2 ->"MM"
      3 ->"MMM"
      _->""
    end
  end
  def romanC(x)do
    case x do
      1 ->"C"
      2 ->"CC"
      3 ->"CCC"
      4 ->"CD"
      5 ->"D"
      6 ->"DC"
      7 ->"DCC"
      8 ->"DCCC"
      9 ->"CM"
      _ ->""
    end
  end
  def romanD(x)do
    case x do
      1 ->"X"
      2 ->"XX"
      3 ->"XXX"
      4 ->"XL"
      5 ->"L"
      6 ->"LX"
      7 ->"LXX"
      8 ->"LXXX"
      9 ->"XC"
      _ ->""
    end
  end
  def romanU(x)do
    case x do
      1 ->"I"
      2 ->"II"
      3 ->"III"
      4 ->"IV"
      5 ->"V"
      6 ->"VI"
      7 ->"VII"
      8 ->"VIII"
      9 ->"IX"
      _ ->""
    end
  end

  def introman(lista,tamanho) when tamanho == 4 do
    [cabeca | cauda ] = lista
    [romanM(cabeca)] ++ introman(cauda, tamanho - 1)
  end

  def introman(lista,tamanho) when tamanho == 3 do
    [cabeca | cauda ] = lista
    [romanC(cabeca)] ++ introman(cauda, tamanho - 1)
  end

  def introman(lista,tamanho) when tamanho == 2 do
    [cabeca | cauda ] = lista
    [romanD(cabeca)] ++ introman(cauda, tamanho - 1)
  end

  def introman(lista,tamanho) when tamanho == 1 do
    [lista|>hd()|>romanU()]
  end
  def chamada do
    x=IO.gets("digite o numero: ")

    w = x
     |>String.replace("\n","")
     |>String.graphemes()
     |>Enum.map(fn x -> String.to_integer(x) end)
     |>IO.inspect()
    y=w|> Enum.count()
    introman(w,y)|>Enum.join("")
  end
end
