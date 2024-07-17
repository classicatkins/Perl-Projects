# Perl Web Scraper for Books to Scrape

This Perl script is designed to scrape book titles and prices from the homepage of the "Books to Scrape" website. It demonstrates basic usage of the `WWW::Mechanize` and `HTML::TreeBuilder` modules to fetch and parse web pages.

## Prerequisites

- Perl 5.x
- CPAN Modules:
  - `WWW::Mechanize`
  - `HTML::TreeBuilder`

You can install the required Perl modules using CPAN with the following command:
```bash
cpan install WWW::Mechanize HTML::TreeBuilder
```


## Installation

1. Clone the repository or download the script directly.
2. Navigate to the directory containing the script.

## Usage

To run the script, follow these steps:

- **Make the Script Executable**:
```bash
  chmod +x book_scraper.pl
  ```

**Execute the Script:**
```bash
./book_scraper.pl
```

This will output the scraped data to a file named books_data.txt in the same directory.

## Output
The script outputs the title and price of each book listed on the homepage of "Books to Scrape" into a text file named books_data.txt. Each line in the file will contain the title and price of a book formatted as follows:

```yaml
Title: [Book Title], Price: [Price]
```
## Features
Fetches the homepage of the "Books to Scrape" website.
Parses the HTML to extract book titles and prices.
Saves the extracted information to a text file.
Customization
You can modify the script to scrape additional data, handle multiple pages, or write data to different formats or databases by altering the parsing logic and output handling.

## Disclaimer
This script is for educational purposes only. Ensure that you have permission to scrape any website and that your actions comply with the website's terms of service and legal restrictions.
