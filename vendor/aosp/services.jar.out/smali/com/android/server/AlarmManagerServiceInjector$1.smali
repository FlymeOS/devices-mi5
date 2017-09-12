.class final Lcom/android/server/AlarmManagerServiceInjector$1;
.super Ljava/util/ArrayList;
.source "AlarmManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    const-string v0, "com.android.deskclock"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceInjector$1;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "com.android.providers.calendar"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceInjector$1;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceInjector$1;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "com.mobiletools.systemhelper"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceInjector$1;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v0, "com.chinaunicom.registerhelper"

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerServiceInjector$1;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method
