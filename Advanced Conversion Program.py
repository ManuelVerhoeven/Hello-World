print('1 Convert Metric to Imperial')
print('2 Convert Imperial to Meric')

choice = input('Make your choice: ')

if choice == '1':
    metric = input('Enter a value in centimeter: ')
    result = float(metric) * 0.393
    print(metric, 'centimeter is', result, 'inches')

elif choice == '2':
    imperial = input('Enter a value in inches')
    result = float(imperial) * 2.54
    print(imperial, 'inches is', result, 'centimenters')

else:
    print('invalid choice')
