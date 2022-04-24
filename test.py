import cchardet
data="[1mSELECT [0m*[1mFROM [0memp_info;"

def convert_encoding(data, new_coding = 'UTF-8'):
  encoding = cchardet.detect(data)['encoding']
  if new_coding.upper() != encoding.upper():
    data = data.decode(encoding, data).encode(new_coding)
    print (data)
  return data

convert_encoding(data)