import requests
import pandas as pd
from bs4 import BeautifulSoup


def scrap():
    """Do a web scraping to udemy web page to extract language and rating."""
    df_udemy = pd.read_csv('Datasets/udemy_courses.csv')
    web_list = df_udemy['url'].to_list()

    rating_list = []
    language_list = []

    for webpage in web_list:
        result = requests.get(webpage, timeout=2.50)
        content = result.text
        soup = BeautifulSoup(content, 'lxml')
        language = soup.find('div', class_='clp-lead__element-item clp-lead__locale')
        if language is None:
            language_list.append('NoData')
        else:
            language_list.append(language.get_text().strip())
        rating = soup.find('span', class_='ud-heading-sm star-rating-module--rating-number--2xeHu')

        if rating is None:
            rating_list.append('NoData')
        else:
            rating_list.append(rating.get_text().strip())

    df_udemy['language'] = language_list
    df_udemy['rating'] = rating_list

    df_udemy.to_csv('Datasets/udemy.csv', index=False)


if __name__ in '__main__':
    scrap()
    