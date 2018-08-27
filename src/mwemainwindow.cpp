#include "mwemainwindow.h"

MWEMainWindow::MWEMainWindow(QWidget *parent) :
    QMainWindow(parent) {
    m_WebView = new QWebEngineView(this);
    m_WebView->load(QUrl("https://github.com/vaibhavpandeyvpz/mwe-qtwebengine"));
    setCentralWidget(m_WebView);
    setMinimumSize(1024, 600);
    setWindowTitle(tr("MWE - QtWebEngine"));
}
