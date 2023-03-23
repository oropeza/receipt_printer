# Receipt - Take Home Project

This exercise generates a receipt of a basket, including its tax calculation. 

## Data source

The baskets are loaded from YAML files inside the `data` folder. They follow the format:

```
- name: product
  imported: false
  excempt: false
  quantity: 1
  value: 1.0
```

## Printing the Receipt

You can print the receipt from the CLI with this command. The file name must be in the `data` directory. Run the command from the project folder. 

```
ruby printer.rb [yaml_file_name]
```

example

```
ruby printer.rb input_01.yaml
ruby printer.rb input_02.yaml
ruby printer.rb input_03.yaml
```

![image](https://user-images.githubusercontent.com/6455197/227157790-86ea3b02-f068-4ca3-b7ab-75d551e0f12b.png)



## Testing

You can run the test suite with the following command in the project folder.
```
ruby test/receipt_test.rb
```

## Author

César Sánchez - 23-03-23
