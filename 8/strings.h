#ifndef STRINGS_H
#define STRINGS_H
#include <QObject>
#include <QStack>

class strings : public QObject
{
    Q_OBJECT
     Q_PROPERTY(QList<QString> list STORED true USER true)
private:
    QList<QString> list;
       QString allStrings;
       QStack<int> size_of_last;
public:
    strings();
    Q_INVOKABLE void addString(QString str);

      Q_INVOKABLE void popList();

      Q_INVOKABLE QString getAllStrings();
   private slots:
   signals:
      void textChanged();
};

#endif // STRINGS_H
