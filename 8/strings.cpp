#include "strings.h"
#include<QDebug>

strings::strings() {
    //size_of_last = 0;
}

void strings::addString(QString str) {
    if(list.size() == 0) {
        str.replace(0, 1, str[0].toUpper());
    }
    else {
        str.push_front(", ");
    }
    list.append(str);
    allStrings += str;
    //size_of_last = str.size();
    size_of_last.push(str.size());
}

void strings::popList() {
    if(list.size() != 0)
    {
    list.pop_back();
    qDebug() << "Size: " << list.size();
    int helper = size_of_last.pop();
    allStrings.remove(allStrings.size()-helper, helper);
    qDebug() << "allStrings: " << allStrings;
    }
    //allStrings = "";
    /*for(int i = 0; i < list.size(); ++i) {
        allStrings += list.takeFirst();
        qDebug() << "Append: " << list.takeFirst();
    }*/
}

QString strings::getAllStrings() {
    return allStrings;
}
