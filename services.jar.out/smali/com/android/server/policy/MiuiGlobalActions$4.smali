.class Lcom/android/server/policy/MiuiGlobalActions$4;
.super Landroid/content/BroadcastReceiver;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$4;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 291
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    :cond_0
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions$4;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    # getter for: Lcom/android/server/policy/MiuiGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/policy/MiuiGlobalActions;->access$200(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    .end local v1    # "reason":Ljava/lang/String;
    :cond_1
    return-void
.end method
