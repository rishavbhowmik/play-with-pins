# Usage of gpio

<http://wiringpi.com/the-gpio-utility/>

`gpio` is pre-installed in raspbian

## Set pin mode

`gpio mode [GPIO_PIN_NUMBER] [in/out]`

Example:

```sh
# Set pin '0' to ouput mode
gpio mode 0 out

# Set pin '2' to input mode
gpio mode 2 in
```

## Write to pin

`gpio write [GPIO_PIN_NUMBER] [0/1]`

Example:

```sh
# Make sure pin is set to `output` mode.
gpio mode 0 out

# Write
gpio write 0 1
```

## Read from pin

`gpio write [GPIO_PIN_NUMBER]`

Output: 0|1

Example:

```sh
# Make sure pin is set to `input` mode.
gpio mode 0 in

# Read
gpio read 0
# ouput can be '0' or '1'
```

## Print everything

`gpio readall`
