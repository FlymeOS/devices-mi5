.class final Lcom/android/server/HandyMode$2;
.super Landroid/content/BroadcastReceiver;
.source "HandyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HandyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    # getter for: Lcom/android/server/HandyMode;->sMode:I
    invoke-static {}, Lcom/android/server/HandyMode;->access$000()I

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/HandyMode;->changeMode(I)V

    .line 127
    :cond_0
    return-void
.end method
