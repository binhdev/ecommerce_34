class CatalogChartService

  def legend_catalog_chart
    @catalogs = Catalog.all
    @catalogs.map {|cat| cat.name}
  end

  def total_product_catalog_chart
    @catalogs = Catalog.all
    @catalogs.map {|cat| cat.products.size}
  end

end
