.class Lcom/miui/server/SplashScreenServiceDelegate$2;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
    .line 113
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    const-string v1, "SplashScreenServiceDelegate"

    const-string v2, "SplashScreen service binderDied!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    iget-object v1, v1, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    iget-object v1, v1, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    iget-object v1, v1, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate$2;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->calcDelayTime()J
    invoke-static {v2}, Lcom/miui/server/SplashScreenServiceDelegate;->access$100(Lcom/miui/server/SplashScreenServiceDelegate;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 120
    return-void
.end method
