#ifndef MWE_MWEMAINWINDOW_H
#define MWE_MWEMAINWINDOW_H


#include <QMainWindow>
#include <QWebEngineView>

class MWEMainWindow : public QMainWindow {
Q_OBJECT

public:
    explicit MWEMainWindow(QWidget *parent = nullptr);

private:
    QWebEngineView *m_WebView;
};


#endif // MWE_MWEMAINWINDOW_H
