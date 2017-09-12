.class Lcom/miui/server/SplashScreenServiceDelegate$3;
.super Landroid/os/Handler;
.source "SplashScreenServiceDelegate.java"


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
    .line 157
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate$3;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate$3;->this$0:Lcom/miui/server/SplashScreenServiceDelegate;

    # invokes: Lcom/miui/server/SplashScreenServiceDelegate;->bindService()V
    invoke-static {v0}, Lcom/miui/server/SplashScreenServiceDelegate;->access$200(Lcom/miui/server/SplashScreenServiceDelegate;)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
