.class public Lcom/miui/server/AccessController;
.super Ljava/lang/Object;
.source "AccessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/AccessController$WorkHandler;
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROL:Ljava/lang/String; = "access_control.key"

.field private static final APPLOCK_WHILTE:Ljava/lang/String; = "applock_whilte"

.field public static final DEBUG:Z = false

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "AccessController"

.field private static final UPDATE_EVERY_DELAY:J = 0x2932e00L

.field private static final UPDATE_FIRT_DELAY:J = 0x2bf20L

.field private static final UPDATE_WHITE_LIST:I = 0x1

.field private static mLockScreen:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSkipList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFileWriteLock:Ljava/lang/Object;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 62
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    sput-object v5, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    .line 64
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    sput-object v5, Lcom/miui/server/AccessController;->mLockScreen:Landroid/util/ArraySet;

    .line 72
    sget-object v5, Lcom/miui/server/AccessController;->mLockScreen:Landroid/util/ArraySet;

    const-string v6, "com.android.camera"

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v5, Landroid/util/Pair;

    const-string v6, "com.tencent.mobileqq"

    const-string v7, "com.tencent.av.ui.VideoInviteLock"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v5, Landroid/util/Pair;

    const-string v6, "com.tencent.mobileqq"

    const-string v7, "com.tencent.av.ui.VideoInviteFull"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v5, Landroid/util/Pair;

    const-string v6, "com.tencent.mm"

    const-string v7, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v5, Landroid/util/Pair;

    const-string v6, "com.whatsapp"

    const-string v7, "com.whatsapp.VoipActivity"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v5, Landroid/util/Pair;

    const-string v6, "jp.naver.line.android"

    const-string v7, "jp.naver.line.android.freecall.FreeCallActivity"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v5, Landroid/util/Pair;

    const-string v6, "com.bbm"

    const-string v7, "com.bbm.ui.voice.activities.IncomingCallActivity"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v5, Landroid/util/Pair;

    const-string v6, "com.xiaomi.channel"

    const-string v7, "com.xiaomi.channel.voip.VoipCallActivity"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v5, Landroid/util/Pair;

    const-string v6, "com.facebook.orca"

    const-string v7, "com.facebook.rtc.activities.WebrtcIncallActivity"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v5, Landroid/util/Pair;

    const-string v6, "com.bsb.hike"

    const-string v7, "com.bsb.hike.voip.view.VoIPActivity"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v5, Landroid/util/Pair;

    const-string v6, "com.eg.android.AlipayGphone"

    const-string v7, "com.alipay.android.app.TransProcessPayActivity"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v5, Landroid/util/Pair;

    const-string v6, "com.eg.android.AlipayGphone"

    const-string v7, "com.alipay.mobile.security.login.ui.AlipayUserLoginActivity"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v5, Landroid/util/Pair;

    const-string v6, "com.eg.android.AlipayGphone"

    const-string v7, "com.alipay.mobile.bill.detail.ui.EmptyActivity_"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 88
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 89
    .local v2, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    if-nez v2, :cond_0

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .restart local v2    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    sget-object v5, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 95
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    .line 115
    iput-object p1, p0, Lcom/miui/server/AccessController;->mContext:Landroid/content/Context;

    .line 116
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/miui/server/AccessController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 117
    new-instance v0, Lcom/miui/server/AccessController$WorkHandler;

    invoke-direct {v0, p0, p2}, Lcom/miui/server/AccessController$WorkHandler;-><init>(Lcom/miui/server/AccessController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/AccessController;->mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;

    .line 118
    iget-object v0, p0, Lcom/miui/server/AccessController;->mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/AccessController$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    return-void
.end method

.method private getLockPatternFilePathForUser(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "access_control.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "access_control.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private readFile(Ljava/lang/String;)[B
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v5, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v5

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 211
    .local v3, "stored":[B
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v2, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v4, v6

    new-array v3, v4, [B

    .line 213
    const/4 v4, 0x0

    array-length v6, v3

    invoke-virtual {v2, v3, v4, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 214
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 218
    if-eqz v2, :cond_2

    .line 220
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v2

    .line 226
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v3

    .line 221
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v4, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v1, v2

    .line 223
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 216
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    const-string v4, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 218
    if-eqz v1, :cond_0

    .line 220
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 221
    :catch_2
    move-exception v0

    .line 222
    :try_start_7
    const-string v4, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v4

    .line 218
    :catchall_1
    move-exception v4

    :goto_3
    if-eqz v1, :cond_1

    .line 220
    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 223
    :cond_1
    :goto_4
    :try_start_9
    throw v4

    .line 221
    :catch_3
    move-exception v0

    .line 222
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "AccessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error closing file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 218
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v4

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 215
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    .prologue
    .line 231
    iget-object v4, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 232
    const/4 v1, 0x0

    .line 235
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_0

    :try_start_1
    array-length v3, p2

    if-nez v3, :cond_2

    .line 238
    :cond_0
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 242
    :goto_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 246
    if-eqz v2, :cond_4

    .line 248
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v2

    .line 254
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    return-void

    .line 240
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    const/4 v3, 0x0

    :try_start_4
    array-length v5, p2

    invoke-virtual {v2, p2, v3, v5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 244
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_5
    const-string v3, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 246
    if-eqz v1, :cond_1

    .line 248
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 249
    :catch_1
    move-exception v0

    .line 250
    :try_start_7
    const-string v3, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v3

    .line 249
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .line 250
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_8
    const-string v3, "AccessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v1, v2

    .line 251
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 246
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    :goto_4
    if-eqz v1, :cond_3

    .line 248
    :try_start_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 251
    :cond_3
    :goto_5
    :try_start_a
    throw v3

    .line 249
    :catch_3
    move-exception v0

    .line 250
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "AccessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 246
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 243
    :catch_4
    move-exception v0

    goto :goto_2

    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_4
    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_1
.end method


# virtual methods
.method public checkAccessControlPattern(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    const/4 v4, 0x0

    .line 195
    :goto_0
    return v4

    .line 191
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 192
    .local v3, "stringToPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    .line 193
    .local v1, "hash":[B
    invoke-direct {p0, p2}, Lcom/miui/server/AccessController;->getLockPatternFilePathForUser(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "filePath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/miui/server/AccessController;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    .line 195
    .local v2, "readFile":[B
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    goto :goto_0
.end method

.method public haveAccessControlPattern(I)Z
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/miui/server/AccessController;->getLockPatternFilePathForUser(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "filePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/server/AccessController;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v3

    .line 201
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    monitor-exit v3

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 203
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setAccessControlPattern(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "hash":[B
    if-eqz p1, :cond_0

    .line 180
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 181
    .local v2, "stringToPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    .line 183
    .end local v2    # "stringToPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/server/AccessController;->getLockPatternFilePathForUser(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "filePath":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/miui/server/AccessController;->writeFile(Ljava/lang/String;[B)V

    .line 185
    return-void
.end method

.method public skipIntentLocked(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 126
    if-nez p2, :cond_0

    .line 167
    :goto_0
    return v8

    .line 129
    :cond_0
    monitor-enter p0

    .line 130
    :try_start_0
    sget-object v10, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    invoke-virtual {v10, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 131
    .local v7, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    if-nez v7, :cond_1

    .line 132
    monitor-exit p0

    goto :goto_0

    .line 165
    .end local v7    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 135
    .restart local v7    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 137
    .local v3, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 139
    .local v5, "i":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 140
    monitor-exit p0

    move v8, v9

    goto :goto_0

    .line 145
    .end local v5    # "i":Landroid/content/Intent;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v3, :cond_7

    .line 147
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "cls":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 149
    monitor-exit p0

    goto :goto_0

    .line 151
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_6

    .line 153
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "fullName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 159
    .restart local v5    # "i":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 160
    .local v1, "c":Landroid/content/ComponentName;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 161
    monitor-exit p0

    move v8, v9

    goto/16 :goto_0

    .line 156
    .end local v1    # "c":Landroid/content/ComponentName;
    .end local v4    # "fullName":Ljava/lang/String;
    .end local v5    # "i":Landroid/content/Intent;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object v4, v2

    .restart local v4    # "fullName":Ljava/lang/String;
    goto :goto_1

    .line 165
    .end local v2    # "cls":Ljava/lang/String;
    .end local v4    # "fullName":Ljava/lang/String;
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public skipLockScreen(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 171
    sget-object v1, Lcom/miui/server/AccessController;->mLockScreen:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/miui/server/AccessController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/AccessController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateWhiteList()V
    .locals 22

    .prologue
    .line 277
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/server/AccessController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 278
    .local v16, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/server/AccessController;->mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/miui/server/AccessController$WorkHandler;->removeMessages(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/server/AccessController;->mWorkHandler:Lcom/miui/server/AccessController$WorkHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-wide/32 v20, 0x2932e00

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/AccessController$WorkHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 281
    const-string v17, "applock_whilte"

    invoke-static/range {v16 .. v17}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 286
    .local v8, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_1

    .line 325
    .end local v8    # "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    .end local v16    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 289
    .restart local v8    # "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    .restart local v16    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 290
    .local v5, "cloudList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/Intent;>;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 291
    .local v7, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    invoke-virtual {v7}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object v13

    .line 292
    .local v13, "json":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 296
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 297
    .local v14, "jsonObject":Lorg/json/JSONObject;
    const-string v17, "pkg"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 298
    .local v15, "pkg":Ljava/lang/String;
    const-string v17, "cls"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, "cls":Ljava/lang/String;
    const-string v17, "act"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, "action":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v11, "intent":Landroid/content/Intent;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 303
    invoke-virtual {v11, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    :goto_2
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 309
    .local v12, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    if-nez v12, :cond_3

    .line 310
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 311
    .restart local v12    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-virtual {v5, v15, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_3
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 322
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "cloudList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/Intent;>;>;"
    .end local v6    # "cls":Ljava/lang/String;
    .end local v7    # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .end local v8    # "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v13    # "json":Ljava/lang/String;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v16    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v9

    .line 323
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 305
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v5    # "cloudList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/content/Intent;>;>;"
    .restart local v6    # "cls":Ljava/lang/String;
    .restart local v7    # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .restart local v8    # "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v13    # "json":Ljava/lang/String;
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v16    # "resolver":Landroid/content/ContentResolver;
    :cond_4
    :try_start_1
    new-instance v17, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    .line 316
    .end local v4    # "action":Ljava/lang/String;
    .end local v6    # "cls":Ljava/lang/String;
    .end local v7    # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "json":Ljava/lang/String;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 317
    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    :try_start_2
    sget-object v17, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->clear()V

    .line 319
    sget-object v17, Lcom/miui/server/AccessController;->mSkipList:Landroid/util/ArrayMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 320
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method
