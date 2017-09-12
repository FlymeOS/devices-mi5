.class final Lcom/android/server/HandyMode$5;
.super Landroid/content/BroadcastReceiver;
.source "HandyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HandyMode;->initialize(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, "newMode":I
    sget-object v1, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    invoke-virtual {v1}, Lcom/android/server/MiuiInputFilter;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v1}, Lmiui/util/HandyModeUtils;->isEnterDirect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    invoke-static {v0}, Lcom/android/server/HandyMode;->alertToEnter(I)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-static {v0}, Lcom/android/server/HandyMode;->changeMode(I)V

    goto :goto_0
.end method
