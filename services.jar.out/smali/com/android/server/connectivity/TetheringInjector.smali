.class Lcom/android/server/connectivity/TetheringInjector;
.super Ljava/lang/Object;
.source "TetheringInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/TetheringInjector$DisableTetheringActionReceiver;
    }
.end annotation


# static fields
.field private static final DISABLE_TETHERING_ACTION:Ljava/lang/String; = "com.android.server.connectivity.Tethering.DisableTetheringAction"

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

.field private static sHandler:Landroid/os/Handler;

.field private static sProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    new-instance v0, Lcom/android/server/connectivity/TetheringInjector$1;

    invoke-direct {v0}, Lcom/android/server/connectivity/TetheringInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/TetheringInjector;->sProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static buildNotificationRemoteViews(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    const v9, 0x110b0019

    const/4 v8, 0x0

    .line 59
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 60
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 61
    sget-object v4, Lcom/android/server/connectivity/TetheringInjector;->sProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v5, 0x5

    invoke-virtual {v0, p0, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 64
    :cond_0
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x11030005

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 66
    .local v3, "rm":Landroid/widget/RemoteViews;
    const v4, 0x110b0017

    invoke-virtual {v3, v4, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 67
    const v4, 0x110b0018

    invoke-virtual {v3, v4, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 68
    const v4, 0x11070096

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 71
    sget-object v4, Lcom/android/server/connectivity/TetheringInjector;->sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.android.server.connectivity.Tethering.DisableTetheringAction"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    sget-object v7, Lcom/android/server/connectivity/TetheringInjector;->sHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.server.connectivity.Tethering.DisableTetheringAction"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 75
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v3, v9, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 77
    return-object v3
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Tethering"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/connectivity/TetheringInjector;->sHandler:Landroid/os/Handler;

    .line 54
    new-instance v1, Lcom/android/server/connectivity/TetheringInjector$DisableTetheringActionReceiver;

    invoke-direct {v1}, Lcom/android/server/connectivity/TetheringInjector$DisableTetheringActionReceiver;-><init>()V

    sput-object v1, Lcom/android/server/connectivity/TetheringInjector;->sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    return-void
.end method

.method public static notificationFinished(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    :try_start_0
    sget-object v1, Lcom/android/server/connectivity/TetheringInjector;->sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Tethering"

    const-string v2, "sDisableTetheringActionReceiver is not register"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setTetheredNotification(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationBuilder"    # Landroid/app/Notification$Builder;

    .prologue
    const/4 v8, 0x0

    .line 82
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 83
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 84
    sget-object v4, Lcom/android/server/connectivity/TetheringInjector;->sProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v5, 0x5

    invoke-virtual {v0, p0, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 86
    :cond_0
    sget-object v4, Lcom/android/server/connectivity/TetheringInjector;->sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.android.server.connectivity.Tethering.DisableTetheringAction"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    sget-object v7, Lcom/android/server/connectivity/TetheringInjector;->sHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.server.connectivity.Tethering.DisableTetheringAction"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p0, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 90
    .local v3, "pi":Landroid/app/PendingIntent;
    const v4, 0x11020018

    const v5, 0x11070096

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 92
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "miui.showAction"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 95
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 96
    return-void
.end method

.method public static setTetheredNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/Notification;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 103
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 104
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 105
    sget-object v5, Lcom/android/server/connectivity/TetheringInjector;->sProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v6, 0x5

    invoke-virtual {v0, p0, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 107
    :cond_0
    sget-object v5, Lcom/android/server/connectivity/TetheringInjector;->sDisableTetheringActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.android.server.connectivity.Tethering.DisableTetheringAction"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    sget-object v8, Lcom/android/server/connectivity/TetheringInjector;->sHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 109
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.server.connectivity.Tethering.DisableTetheringAction"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p0, v10, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 112
    .local v4, "pi":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .local v3, "notificationBuilder":Landroid/app/Notification$Builder;
    iget-wide v6, p3, Landroid/app/Notification;->when:J

    invoke-virtual {v3, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, p3, Landroid/app/Notification;->color:I

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, p3, Landroid/app/Notification;->icon:I

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 123
    const v5, 0x11020018

    const v6, 0x11070096

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 125
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "miui.showAction"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 128
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 129
    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    .line 130
    return-void
.end method
