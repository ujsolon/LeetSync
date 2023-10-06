import pandas as pd

def rearrange_products_table(products: pd.DataFrame) -> pd.DataFrame:
    return pd.melt(
        products, id_vars = 'product_id', var_name = 'store', value_name = 'price' ##declare the table, then the variables to use in that table
    ).dropna() ##to drop a line with a missing entry?
