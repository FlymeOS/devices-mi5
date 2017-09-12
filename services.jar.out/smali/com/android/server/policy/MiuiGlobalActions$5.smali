.class Lcom/android/server/policy/MiuiGlobalActions$5;
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
    .line 302
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$5;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions$5;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    # getter for: Lcom/android/server/policy/MiuiGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/MiuiGlobalActions;->access$200(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 306
    return-void
.end method
