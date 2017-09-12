.class public Lcom/miui/server/SplashScreenServiceDelegate;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX_DELAY_TIME:J = 0x36ee80L

.field static final MSG_REBIND:I = 0x1

.field public static final SPLASHSCREEN_ACTIVITY:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashActivity"

.field public static final SPLASHSCREEN_CLASS:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashScreenService"

.field public static final SPLASHSCREEN_PACKAGE:Ljava/lang/String; = "com.miui.systemAdSolution"

.field private static final TAG:Ljava/lang/String; = "SplashScreenServiceDelegate"


# instance fields
.field private mContext:Landroid/content/Context;

.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mDelayTime:J

.field final mHandler:Landroid/os/Handler;

.field private mSeverity:I

.field private final mSplashScreenConnection:Landroid/content/ServiceConnection;

.field protected mSplashScreenService:Lcom/miui/server/ISplashScreenService;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    .line 36
    iput-wide v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 61
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$1;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    .line 113
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$2;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 157
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$3;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$3;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->bindService()V

    .line 41
    return-void
.end method

.method static synthetic access$002(Lcom/miui/server/SplashScreenServiceDelegate;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;
    .param p1, "x1"    # J

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/miui/server/SplashScreenServiceDelegate;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->calcDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SplashScreenServiceDelegate;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->bindService()V

    return-void
.end method

.method private bindService()V
    .locals 6

    .prologue
    .line 44
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-nez v2, :cond_0

    .line 46
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.miui.systemAdSolution"

    const-string v3, "com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    const-string v2, "SplashScreenServiceDelegate"

    const-string v3, "splashscreen: can\'t bind to com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "SplashScreenServiceDelegate"

    const-string v3, "splashscreen service started"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SplashScreenServiceDelegate"

    const-string v3, "Can not start splash screen service! "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private calcDelayTime()J
    .locals 14

    .prologue
    .line 84
    const-wide/16 v8, 0x2710

    .line 85
    .local v8, "tenSeconds":J
    const-wide/32 v4, 0xea60

    .line 86
    .local v4, "minute":J
    const-wide/32 v2, 0x36ee80

    .line 87
    .local v2, "hour":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    sub-long v0, v10, v12

    .line 89
    .local v0, "aliveTime":J
    cmp-long v7, v0, v4

    if-gez v7, :cond_0

    .line 90
    const/4 v6, 0x1

    .line 96
    .local v6, "severity":I
    :goto_0
    iget v7, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    if-ne v6, v7, :cond_4

    .line 97
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 98
    iget-wide v10, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/16 v12, 0x2

    mul-long/2addr v10, v12

    iput-wide v10, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 107
    :goto_1
    iget-wide v10, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/32 v12, 0x36ee80

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 108
    iput v6, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    .line 109
    const-string v7, "SplashScreenServiceDelegate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restart service delay time "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-wide v10, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    return-wide v10

    .line 91
    .end local v6    # "severity":I
    :cond_0
    cmp-long v7, v0, v2

    if-gez v7, :cond_1

    .line 92
    const/4 v6, 0x2

    .restart local v6    # "severity":I
    goto :goto_0

    .line 94
    .end local v6    # "severity":I
    :cond_1
    const/4 v6, 0x3

    .restart local v6    # "severity":I
    goto :goto_0

    .line 99
    :cond_2
    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 100
    iget-wide v10, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1

    .line 102
    :cond_3
    iput-wide v8, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1

    .line 105
    :cond_4
    iput-wide v8, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1
.end method


# virtual methods
.method public activityIdle(Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v1, :cond_0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    invoke-interface {v1, p1}, Lcom/miui/server/ISplashScreenService;->activityIdle(Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SplashScreenServiceDelegate"

    const-string v2, "activityIdle failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    invoke-interface {v1, p1}, Lcom/miui/server/ISplashScreenService;->destroyActivity(Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SplashScreenServiceDelegate"

    const-string v2, "destroyActivity failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 124
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-eqz v2, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "finalIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    invoke-interface {v2, p1, p2}, Lcom/miui/server/ISplashScreenService;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    .end local v1    # "finalIntent":Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 130
    .restart local v1    # "finalIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SplashScreenServiceDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request splash screen failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "finalIntent":Landroid/content/Intent;
    :cond_0
    move-object v1, p1

    .line 134
    goto :goto_0
.end method
