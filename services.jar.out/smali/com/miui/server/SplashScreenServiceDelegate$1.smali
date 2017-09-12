.class Lcom/miui/server/SplashScreenServiceDelegate$1;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SplashScreenServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SplashScreenServiceDelegate;


# direct methods
.method constructor <init>(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 64
    const-string v1, "SplashScreenServiceDelegate"

    const-string v2, "SplashScreen service connected!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {p2}, Lcom/miui/server/ISplashScreenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/server/ISplashScreenService;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    .line 66
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J
    invoke-static {v1, v2, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->access$002(Lcom/miui/server/SplashScreenServiceDelegate;J)J

    .line 67
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    iget-object v1, v1, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    iget-object v1, v1, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    invoke-interface {v1}, Lcom/miui/server/ISplashScreenService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    iget-object v2, v2, Lcom/miui/server/SplashScreenServiceDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SplashScreenServiceDelegate"

    const-string v2, "Splash screen linkToDeath failed! "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 77
    const-string v0, "SplashScreenServiceDelegate"

    const-string v1, "SplashScreen service disconnected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$1;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    .line 79
    return-void
.end method
