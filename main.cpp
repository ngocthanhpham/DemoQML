#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

//    QQmlApplicationEngine engine;
//    engine.load(QUrl(QLatin1String("qrc:/ShowNewWindow.qml")));
//    if (engine.rootObjects().isEmpty())
//        return -1;

    QQuickView qview;
    qview.setSource(QUrl(QLatin1String("qrc:/CircleProgressBar.qml")));
    qview.show();

    return app.exec();
}
