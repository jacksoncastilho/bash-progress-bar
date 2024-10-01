# Bash Progress Bar

This project demonstrates how to create a simple progress bar using Bash. It shows a percentage-based progress bar that updates in real-time, perfect for long-running scripts. The project was inspired by [this article on Medium](https://medium.com/meninunes/bash-construindo-indicador-de-progresso-8de94c37683) by Meninunes.

## How It Works

The script takes a numeric argument representing the range (i.e., the total number of steps) and then simulates a process, updating the progress bar as it goes. The progress bar uses `#` characters to show progress and displays the percentage completed.

## How to Use

1. Clone this repository:

   ```bash
   git clone https://github.com/your-username/bash-progress-bar.git
   cd bash-progress-bar
   ```

2. Make the script executable:

   ```bash
   chmod +x progressbar.sh
   ```

3. Run the script with a specified range (number of steps):

   ```bash
   ./progressbar.sh 10
   ```

   Replace `10` with the number of steps you want.

## Demo

Here’s a demonstration of the progress bar in action with a range of 10:

```
[##########] 100 %
```

The bar will start from 0% and update every second until it reaches 100%.

## Customization

You can change the following parameters in the script:

- `BAR_SIZE`: Adjust this variable to change the length of the progress bar.
- `sleep 1`: Modify the sleep duration to speed up or slow down the progress updates.

## License

This project is licensed under the MIT License.

## Reference

- [Bash: Construindo Indicador de Progresso](https://medium.com/meninunes/bash-construindo-indicador-de-progresso-8de94c37683) by Meninunes
