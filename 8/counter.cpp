#include "counter.h"
#include<QDebug>
counter::counter()
{
cnt = 0;
}

QString counter::getText() {
   return text;
}

void counter::setText(QString &newText) {
   text = newText;
}

void counter::printText() {
   qDebug() << text;
}



void counter::increaseCnt() {
    cnt++;
}

void counter::resetCnt() {
    cnt=0;
}


void counter::printCnt() {
   qDebug() << "Counter: " << cnt;
}

int counter::getCnt() {
   return cnt;
}
