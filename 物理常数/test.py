import pandas as pd

a = pd.read_table("codata20182.txt", sep='\s\s+', header='infer', names=None,index_col=None, dtype=None, engine=None, nrows=None)
# /t表示制表符
# a['Unit'] = '$'+a['Unit']+'$'

# a['Value'].replace(to_replace='*\s*', value=None, inplace=True, limit=None, regex=False, method='pad')

a['Value'] = a['Value'].str.replace('\s','')
a['Value'] = '$'+a['Value']+'$'

a['Uncertainty'] = a['Uncertainty'].str.replace('\s','')
a['Uncertainty'] = '$'+a['Uncertainty']+'$'
a.to_csv(r'res.csv')

# =FILTERXML(WEBSERVICE("http://fanyi.youdao.com/translate?&i="&B2&"&doctype=xml&version"),"//translation")
# 用于excel批量翻译